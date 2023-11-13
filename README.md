# App YAPE Redux

Haciendo uso de Swift UI, XCTestCase(Unit Test / Instrumentation Test), Redux, DispatchQueue, Singleton, Codable, ObservableObject.

HomeView: Listado de recetas y buscador.
DetailView: Detalle de receta y botón para abrir el mapa.
MapView: Mapa con uso de sheet.

Redux(View, Action, State, Reducer, Store): Arquitectura unidireccional en View se comunica, haciendo uso de un Action. El State es la única fuente de datos. Se actualiza El Reducer recibe un Action y el State, actualizando el State. El View al final se actualiza, debido a qué el State se modificó. El Store alberga el State y el Reducer.

FoodRepository: Repositorio que me brinda Foods.
FoodRepositoryService: Repositorio que me brinda Foods desde remoto.

Store: Actualizar el State según el Action.

State: Fuente de datos.

Action(GetFoodsAction, LoadAction, SearchAction, SetFoodsAction): Acciones identificadas



