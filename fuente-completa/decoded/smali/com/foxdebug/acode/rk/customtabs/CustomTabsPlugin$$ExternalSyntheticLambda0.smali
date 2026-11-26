.class public final synthetic Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin;

    iput-object p2, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$3:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin;

    iget-object v1, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin$$ExternalSyntheticLambda0;->f$3:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/foxdebug/acode/rk/customtabs/CustomTabsPlugin;->lambda$execute$0$com-foxdebug-acode-rk-customtabs-CustomTabsPlugin(Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
