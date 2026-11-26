.class public final synthetic Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;Ljava/lang/String;ZLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$0:Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;

    iput-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$4:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$0:Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;

    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v3, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;->f$4:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->lambda$startProcess$5$com-foxdebug-acode-rk-exec-terminal-BackgroundExecutor(Ljava/lang/String;ZLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
