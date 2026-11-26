.class public final synthetic Lcom/foxdebug/system/System$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONArray;

.field public final synthetic f$1:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/system/System$5$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/foxdebug/system/System$5$$ExternalSyntheticLambda0;->f$1:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/foxdebug/system/System$5$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/foxdebug/system/System$5$$ExternalSyntheticLambda0;->f$1:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/foxdebug/system/System$5;->lambda$run$0(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
