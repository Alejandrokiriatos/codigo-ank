.class public final synthetic Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/system/System;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;->f$0:Lcom/foxdebug/system/System;

    iput-object p2, p0, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;->f$2:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;->f$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;->f$2:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/system/System;->lambda$execute$0$com-foxdebug-system-System(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
