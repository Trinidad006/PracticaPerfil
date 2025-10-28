# Profile Screen - Arquitectura y Documentación

## 📁 Estructura del Proyecto

```
lib/
└── scr/
    ├── core/
    │   ├── constants/
    │   │   └── app_constants.dart    # Constantes de la aplicación
    │   └── theme/
    │       ├── app_colors.dart       # Paleta de colores
    │       └── app_text_styles.dart  # Estilos de texto
    └── features/
        └── profile/
            └── presentation/
                ├── screens/
                │   └── profile_screen.dart  # Pantalla principal
                └── widgets/
                    ├── profile_avatar.dart   # Avatar con badge verificado
                    ├── profile_card.dart     # Contenedor de tarjeta
                    ├── stat_item.dart        # Item de estadística
                    └── stats_row.dart        # Fila de estadísticas
```

## 🎯 Desafíos Implementados

### Desafío 1: Diseño Responsivo ✅

**Objetivo:** Hacer que la tarjeta se adapte a diferentes tamaños de pantalla.

**Implementación:**
- Uso de `MediaQuery` para obtener dimensiones de la pantalla
- Ancho responsivo:
  - Móvil: 90% del ancho de pantalla
  - Tablet/Desktop: máximo 400px
- Altura proporcional con restricciones mín/máx
- Breakpoint en 600px para cambio de diseño

**Código clave:**
```dart
final cardWidth = screenWidth > AppConstants.tabletBreakpoint 
    ? AppConstants.cardMaxWidth
    : screenWidth * AppConstants.cardWidthPercentMobile;
    
final cardHeight = (cardWidth * AppConstants.cardAspectRatio)
    .clamp(AppConstants.cardMinHeight, screenHeight * 0.75);
```

### Desafío 2: Gradientes y Layout en Eje Z ✅

**Objetivo:** Mejorar el atractivo visual con gradientes y elementos superpuestos.

**Implementación:**
- Gradiente sutil en el fondo de la tarjeta (3 colores)
- Badge de verificación usando `Stack` y `Positioned`
- Profundidad visual (eje Z) con sombras y superposición

**Características:**
- `LinearGradient` con colores azul claro a blanco
- Badge circular con borde blanco
- Icono `Icons.verified` en azul
- Posicionamiento en la esquina inferior derecha del avatar

### Desafío 3: Componentización y Theming ✅

**Objetivo:** Refactorizar código en componentes reutilizables y centralizar estilos.

**Componentes Creados:**

#### 1. **ProfileCard** (`profile_card.dart`)
Widget contenedor reutilizable con:
- Gradiente de fondo
- Bordes redondeados
- Sombra personalizada
- Padding configurable

#### 2. **ProfileAvatar** (`profile_avatar.dart`)
Avatar circular con:
- Imagen de perfil desde assets
- Badge de verificación opcional
- Radio personalizable
- Stack para superposición

#### 3. **StatItem** (`stat_item.dart`)
Widget para mostrar una estadística individual:
- Etiqueta (gris, pequeña)
- Valor (negrita, grande)
- Espaciado consistente

#### 4. **StatsRow** (`stats_row.dart`)
Fila horizontal con estadísticas:
- Tres `StatItem` widgets
- Distribución uniforme
- Datos: Publicaciones, Seguidores, Seguidos

## 🎨 Sistema de Theming

### AppColors (`app_colors.dart`)
Paleta de colores centralizada:
- Colores primarios
- Colores de fondo
- Gradientes
- Colores de texto
- Colores de acento

### AppConstants (`app_constants.dart`)
Constantes de diseño:
- Espaciado (XSmall, Small, Medium, Large, XLarge)
- Radios de borde
- Dimensiones de avatar
- Dimensiones de tarjeta
- Configuración de sombras
- Tamaños de fuente

### AppTextStyles (`app_text_styles.dart`)
Estilos de texto predefinidos:
- Etiquetas de estadísticas
- Valores de estadísticas
- Nombres de usuario
- Handles de usuario
- Títulos de AppBar

## 🔧 Ventajas de la Arquitectura

### 1. **Mantenibilidad**
- Cambios de diseño en un solo lugar
- Fácil de actualizar colores y espaciado
- Código organizado y fácil de navegar

### 2. **Reutilización**
- Componentes pueden usarse en otras pantallas
- Estilos consistentes en toda la app
- Menos duplicación de código

### 3. **Escalabilidad**
- Fácil agregar nuevas características
- Estructura clara para nuevos desarrolladores
- Preparado para crecimiento del proyecto

### 4. **Testability**
- Componentes pequeños fáciles de probar
- Separación clara de responsabilidades
- Widgets independientes

## 📱 Uso

### Pantalla de Perfil Básica
```dart
import 'package:flutter/material.dart';
import 'scr/features/profile/presentation/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfileScreen(),
    );
  }
}
```

### Usar Componentes Individualmente
```dart
// Avatar con verificación
ProfileAvatar(
  imagePath: 'assets/images/profile_pic.jpg',
  isVerified: true,
  radius: 60,
)

// Item de estadística
StatItem(
  label: 'Seguidores',
  value: '5790',
)

// Tarjeta personalizada
ProfileCard(
  width: 300,
  height: 450,
  child: YourCustomWidget(),
)
```

## 🎯 Próximos Pasos

1. **Agregar información del usuario:**
   - Nombre
   - Handle (@usuario)
   - Biografía

2. **Hacer componentes más configurables:**
   - Pasar datos de estadísticas como parámetros
   - Permitir personalizar colores del gradiente
   - Opciones de tamaño para diferentes contextos

3. **Animaciones:**
   - Transiciones suaves
   - Efectos hover
   - Animaciones de carga

4. **Accesibilidad:**
   - Etiquetas semánticas
   - Soporte para lectores de pantalla
   - Contraste de colores

## 📚 Conceptos de Flutter Aplicados

- ✅ Widgets responsivos con `MediaQuery`
- ✅ Layout en eje Z con `Stack` y `Positioned`
- ✅ Gradientes con `LinearGradient`
- ✅ Composición de widgets
- ✅ Arquitectura modular
- ✅ Theming centralizado
- ✅ Constantes de diseño
- ✅ Widgets reutilizables
- ✅ Clean Architecture (presentación separada)

## 🏆 Logros

- Tarjeta de perfil completamente responsiva
- Diseño atractivo con gradientes y sombras
- Código limpio y bien organizado
- Componentes reutilizables
- Sistema de theming profesional
- Fácil de mantener y escalar

---

**Desarrollado como parte del curso de Flutter - Profile Screen Challenge**
