.class final Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;
.super Ljava/lang/Object;
.source "ProcessServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnState"
.end annotation


# instance fields
.field final process:Ljava/lang/Process;

.field final stdin:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/lang/Process;Ljava/io/OutputStream;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;->process:Ljava/lang/Process;

    .line 27
    iput-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$ConnState;->stdin:Ljava/io/OutputStream;

    return-void
.end method
