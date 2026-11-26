.class public final synthetic Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Lorg/java_websocket/WebSocket;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Lorg/java_websocket/WebSocket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda0;->f$1:Lorg/java_websocket/WebSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda0;->f$1:Lorg/java_websocket/WebSocket;

    invoke-static {v0, v1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->lambda$onOpen$0(Ljava/io/InputStream;Lorg/java_websocket/WebSocket;)V

    return-void
.end method
