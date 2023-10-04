# Descripción del Proyecto
## Aplicación de Chat con Autenticación de Usuarios y Mensajería en Tiempo Real

Este proyecto es una aplicación de chat que permite a los usuarios autenticarse y comunicarse en tiempo real. Se compone de dos pantallas principales, que se describen a continuación, basadas en el código proporcionado:

### Pantalla de Autenticación

La Pantalla de Autenticación es la primera pantalla de la aplicación y se encarga de gestionar el registro e inicio de sesión de los usuarios. Está implementada en la clase AuthScreen. Las funcionalidades clave de esta pantalla son las siguientes:

* Registro e Inicio de Sesión: Los usuarios pueden registrarse con una dirección de correo electrónico y una contraseña, o iniciar sesión si ya tienen una cuenta.
* Carga de Imagen de Perfil: Durante el registro, los usuarios pueden cargar una imagen de perfil personalizada, que se almacena de manera segura en Firebase Storage.
*Validación de Datos: Se realizan validaciones en los campos de correo electrónico, contraseña y nombre de usuario para garantizar que los datos cumplan con los requisitos mínimos. 
* Notificaciones de Errores: La pantalla muestra notificaciones de errores en caso de problemas durante el registro o inicio de sesión, brindando a los usuarios información sobre el motivo del fallo. 
* Alternar entre Registro e Inicio de Sesión: Los usuarios pueden alternar entre las pantallas de registro e inicio de sesión haciendo clic en el botón correspondiente.

### Pantalla de Chat

La Pantalla de Chat es la segunda pantalla de la aplicación y se encarga de mostrar la conversación en tiempo real entre los usuarios. Está implementada en la clase ChatScreen. Las funcionalidades clave de esta pantalla son las siguientes:

* Interfaz de Chat: La pantalla muestra los mensajes en tiempo real en un widget llamado ChatMessages, que se actualiza a medida que llegan nuevos mensajes. 
* Enviar Mensajes: Los usuarios pueden escribir y enviar mensajes en el chat utilizando el widget NewMessage. Los mensajes enviados se muestran en la conversación en tiempo real. 
* Barra de Aplicación: La barra de la aplicación en la parte superior contiene el nombre de la aplicación ("OpenChat") y un botón de cierre de sesión para permitir a los usuarios cerrar sesión en la aplicación. 
* Notificaciones Push: La pantalla implementa notificaciones push utilizando Firebase Cloud Messaging (FCM). Los usuarios reciben notificaciones en tiempo real cuando se les envía un nuevo mensaje, lo que garantiza una experiencia de chat instantáneo. 
* Suscripción a Temas: Los usuarios se suscriben al tema "chat" para recibir notificaciones de chat.

### Conclusiones

En resumen, este proyecto es una aplicación de chat con autenticación de usuarios, mensajería en tiempo real y notificaciones push. Utiliza Firebase para la autenticación de usuarios, Firebase Storage para el almacenamiento de imágenes de perfil, Firebase Cloud Firestore para el almacenamiento de datos en tiempo real y Firebase Cloud Messaging (FCM) para las notificaciones push. La combinación de estas dos pantallas permite a los usuarios autenticarse y comunicarse de manera efectiva en una plataforma de chat en tiempo real. El código proporcionado representa una parte fundamental de esta aplicación, que puede ampliarse y personalizarse según las necesidades específicas del proyecto.