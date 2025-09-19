# StarletDevelopment
The **StarletDevelopment** repository acts as a central hub for coordinated development and testing, bringing together all Starlets libraries. 

## 🚀 Starlet Ecosystem
The **Starlet** ecyostem is a collection of light, modular C++ libraries designed for creating OpenGL applications. 

- [**StarletEngine**](https://github.com/Masonlet/StarletEngine) – Core game/graphics engine (C++ / OpenGL)
- [**StarletMath**](https://github.com/Masonlet/StarletMath) – Lightweight Header-only math library
- [**StarletControls**](https://github.com/Masonlet/StarletControls) – Input & control management
- [**StarletScene**](https://github.com/Masonlet/StarletScene) – Scene management with loaders & parsers
- [**StarletGraphics**](https://github.com/Masonlet/StarletGraphics) – Mesh, texture, shader management
- [**StarletParsers**](https://github.com/Masonlet/StarletParsers) – File & text parsing utilities
- [**StarletSamples**](https://github.com/Masonlet/StarletSamples) – Engine demonstration & sample scenes.
- [**StarletStarter**](https://github.com/Masonlet/StarletStarter) - Starting template for new Starlet game projects

## Building the Project
This project uses **CMake**. Follow these steps to build:

### 1. Clone the Repository
```bash
git clone https://github.com/Masonlet/StarletDevelopment.git
cd StarletDevelopment
```

### 2. Clone the Starlet Repositories
Run one of the included `clone_starlet_` files

### 3. Create a Build directory and Generate Build Files
```bash
mkdir build
cd build 
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
```
`-DCMAKE_EXPORT_COMPILE_COMMANDS=ON` flag generates a `compile_commands.json` file  
Can be safely omitted on Windows if you're using Visual Studio

### 4. Build the Project
- **Linux**:
  ```bash
  make
  ```

- **Windows**:
  ```bash
  cmake --build .
  ```
  Or open the generated `.sln` file in Visual Studio and build the solution.
