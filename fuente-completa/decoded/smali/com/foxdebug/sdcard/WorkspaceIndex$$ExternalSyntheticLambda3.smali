.class public final synthetic Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/sdcard/WorkspaceIndex;

.field public final synthetic f$1:Lorg/apache/cordova/CallbackContext;

.field public final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/sdcard/WorkspaceIndex;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;->f$0:Lcom/foxdebug/sdcard/WorkspaceIndex;

    iput-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;->f$1:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;->f$0:Lcom/foxdebug/sdcard/WorkspaceIndex;

    iget-object v1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;->f$1:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda3;->f$2:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/sdcard/WorkspaceIndex;->lambda$query$3$com-foxdebug-sdcard-WorkspaceIndex(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    return-void
.end method
