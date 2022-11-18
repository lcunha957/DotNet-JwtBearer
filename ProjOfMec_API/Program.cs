using Microsoft.EntityFrameworkCore;
using ProjOfMec_API.Data;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Microsoft.OpenApi.Models;

var builder = WebApplication.CreateBuilder(args);

ConfigurationManager configuration = builder.Configuration;

//Allow CORS
var MyAllowSpecificOrigins = "_myAllowSpecificOrigins";

// Add services to the container.

//Allow CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy(
        MyAllowSpecificOrigins,
        builder =>
        {
            builder
                .WithOrigins("http://localhost")
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader();
            builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
            builder.SetIsOriginAllowed(origin => new Uri(origin).Host == "localhost");
            builder.SetIsOriginAllowed(origin => true);
        }
    );
});

// Adding Authentication
builder.Services
    .AddAuthentication(options =>
    {
        options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
        options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
        options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
    })
    // Adding Jwt Bearer
    .AddJwtBearer(options =>
    {
        options.SaveToken = true;
        options.RequireHttpsMetadata = false;
        options.TokenValidationParameters = new TokenValidationParameters()
        {
            ValidateIssuer = true,
            ValidateAudience = true,
            ValidAudience = configuration["JWT:ValidAudience"],
            ValidIssuer = configuration["JWT:ValidIssuer"],
            IssuerSigningKey = new SymmetricSecurityKey(
                Encoding.UTF8.GetBytes(configuration["JWT:Secret"])
            )
        };
    });

// Add services to the container.

builder.Services.AddControllers();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(
    c =>
{
    c.SwaggerDoc("v1", new OpenApiInfo
    {
        Title = "Projeto Oficina Mecânica L&L Motors: BackEnd",
        Description = "Desenvolvido por Lunara Morena Cunha",
        License = new OpenApiLicense { Name = "MIT", Url = new Uri("https://opensource.org/licenses/MIT") }
    });

    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Description = "Insira o token JWT desta maneira: Bearer {seu token}",
        Name = "Authorization",
        Scheme = "Bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Type = SecuritySchemeType.ApiKey
    });

    c.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "Bearer"
                }
            },
            new string[] {}
        }
    });
});


// Add DbContext



builder.Services.AddDbContext<OfMecContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("StringConexaoSQLServer"));
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

//app.UseHttpsRedirection();

app.UseCors(MyAllowSpecificOrigins);

app.UseAuthentication();

app.UseAuthorization();

app.MapControllers();

app.Run();
