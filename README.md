# 📱 Cotizador Telcel — Mobile App

Cliente Flutter (Android + iOS) para vendedores Telcel. Cotización rápida, historial, catálogos offline.

## 🚀 Características MVP

- ✅ Login (Telegram widget + email/password)
- ✅ Chat cotización (Claude NLP)
- ✅ Descarga PDFs (cliente + interno)
- ✅ Historial searchable
- ✅ Catálogos offline (928 equipos, 4664 planes)
- ✅ Sincronización con bot backend

## 📋 Setup Local

### Requisitos

```bash
flutter --version        # >= 3.19
dart --version          # >= 3.3
```

### Instalación

```bash
cd cotizador-app
flutter pub get
flutter run              # Debug en emulador/dispositivo
```

### VS Code

1. Instalar extensiones:
   - Flutter (Dart Code)
   - Dart (Dart Code)
   - REST Client

2. Configurar emulador:
   ```bash
   flutter emulators --launch Nexus_5X_API_30
   ```

3. Hot reload:
   - Presiona `r` en terminal para hot reload (1s)
   - Presiona `R` para full restart

## 📱 Desarrollo

Tareas por completar: ver `PLAN_APP_ANDROID.md` en el repo raíz.

### Estructura

```
lib/
├── main.dart             # Entry point
├── models/               # Data classes
├── screens/              # UI screens
├── controllers/          # State management
├── services/             # API, storage, external
├── utils/                # Constants, validators, formatters
├── widgets/              # Reusable components
└── theme/                # Branding
```

## 🔐 Seguridad

- JWT token almacenado encrypted en SharedPreferences
- Validación RFC antes de cotizar
- HTTPS enforcing
- Offline data no contiene PII

## 📡 API Bot

Integración con `cotizador-telcel` bot:

```
POST   /api/v1/auth/verify          → Login
POST   /api/v1/chat/cotizar         → Chat cotización
GET    /api/v1/cotizaciones         → Historial
GET    /api/v1/cotizaciones/<id>/pdf → PDFs
GET    /api/v1/catalogos/*          → Planes/equipos
```

## 📊 Roadmap

### Phase 1 (MVP — 2-3 semanas)
- [x] Setup Flutter + structure
- [ ] Login screen
- [ ] Chat cotización
- [ ] Resultados + PDFs
- [ ] Historial + catálogos
- [ ] Tests + release APK

### Phase 2 (Improvement)
- [ ] Push notifications (Firebase)
- [ ] Offline sync background
- [ ] Biometric auth
- [ ] Advanced filters

### Phase 3 (Scale)
- [ ] Multi-distribuidor
- [ ] Analytics avanzado
- [ ] Payment integration

## 🤝 Contribuir

```bash
git checkout -b feature/nombre
# Hace cambios...
git commit -am "feat: descripción"
git push origin feature/nombre
# Abre PR
```

## 📄 Licencia

Private — para Telcel distribuidores

---

**Documentación técnica**: Ver `PLAN_APP_ANDROID.md` en `cotizador-telcel` repo
