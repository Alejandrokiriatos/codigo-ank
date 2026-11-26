.class public final synthetic Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/sdcard/WorkspaceIndex;

.field public final synthetic f$1:Lcom/foxdebug/sdcard/WorkspaceIndex$Job;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Lorg/apache/cordova/CallbackContext;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/sdcard/WorkspaceIndex;Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$0:Lcom/foxdebug/sdcard/WorkspaceIndex;

    iput-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$1:Lcom/foxdebug/sdcard/WorkspaceIndex$Job;

    iput-object p3, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$3:Lorg/apache/cordova/CallbackContext;

    iput-object p5, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$0:Lcom/foxdebug/sdcard/WorkspaceIndex;

    iget-object v1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$1:Lcom/foxdebug/sdcard/WorkspaceIndex$Job;

    iget-object v2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$3:Lorg/apache/cordova/CallbackContext;

    iget-object v4, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/foxdebug/sdcard/WorkspaceIndex;->lambda$search$2$com-foxdebug-sdcard-WorkspaceIndex(Lcom/foxdebug/sdcard/WorkspaceIndex$Job;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V

    return-void
.end method
