# telefonia

# Telefonía - App de Perfil de Usuario

Una aplicación Flutter que muestra una tarjeta de perfil elegante y responsiva con diseño modular profesional.

## ✨ Características

- 📱 **Diseño Responsivo**: Adaptable a móviles y tablets
- 🎨 **UI Moderna**: Gradientes sutiles, sombras elegantes, bordes redondeados
- ✅ **Badge de Verificación**: Indicador visual de perfil verificado
- 📊 **Estadísticas**: Muestra publicaciones, seguidores y seguidos
- 🏗️ **Arquitectura Modular**: Componentes reutilizables y código limpio
- 🎯 **Theming Centralizado**: Colores, estilos y constantes en un solo lugar

## 🚀 Inicio Rápido

```bash
# Instalar dependencias
flutter pub get

# Ejecutar la app
flutter run
```

## 📁 Estructura del Proyecto

```
lib/scr/
├── core/
│   ├── constants/     # Constantes (espaciado, tamaños, etc.)
│   └── theme/         # Colores y estilos de texto
└── features/
    └── profile/
        └── presentation/
            ├── screens/   # Pantallas
            └── widgets/   # Componentes reutilizables
```

## 🎨 Componentes Principales

- **ProfileCard**: Contenedor con gradiente y sombra
- **ProfileAvatar**: Avatar circular con badge de verificación
- **StatItem**: Item individual de estadística
- **StatsRow**: Fila de tres estadísticas

## 🛠️ Tecnologías

- Flutter 3.9.2+
- Dart 3.9.2+
- Material Design 3

## 📚 Documentación

Para más detalles, consulta [GUIA_COMPLETA.md](GUIA_COMPLETA.md)

## 🎯 Próximos Pasos

- [ ] Agregar información del usuario (nombre, handle, bio)
- [ ] Hacer las estadísticas dinámicas
- [ ] Agregar navegación entre pantallas
- [ ] Conectar con backend/API
- [ ] Implementar modo oscuro

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
