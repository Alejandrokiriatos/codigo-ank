.class public Lcom/sshtools/common/util/IOStreamConnector;
.super Ljava/lang/Object;
.source "IOStreamConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;,
        Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000


# instance fields
.field BUFFER_SIZE:I

.field private bytes:J

.field private closeInput:Z

.field private closeOutput:Z

.field closed:Z

.field private in:Ljava/io/InputStream;

.field lastError:Ljava/lang/Throwable;

.field protected listenerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private out:Ljava/io/OutputStream;

.field running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetbytes(Lcom/sshtools/common/util/IOStreamConnector;)J
    .locals 2

    iget-wide v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->bytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcloseInput(Lcom/sshtools/common/util/IOStreamConnector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeInput:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcloseOutput(Lcom/sshtools/common/util/IOStreamConnector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeOutput:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetin(Lcom/sshtools/common/util/IOStreamConnector;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/util/IOStreamConnector;->in:Ljava/io/InputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetout(Lcom/sshtools/common/util/IOStreamConnector;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/util/IOStreamConnector;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbytes(Lcom/sshtools/common/util/IOStreamConnector;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sshtools/common/util/IOStreamConnector;->bytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputthread(Lcom/sshtools/common/util/IOStreamConnector;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/sshtools/common/util/IOStreamConnector;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->in:Ljava/io/InputStream;

    .line 40
    iput-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->out:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeInput:Z

    .line 44
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeOutput:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->running:Z

    .line 46
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closed:Z

    const v0, 0x8000

    .line 49
    iput v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->BUFFER_SIZE:I

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->in:Ljava/io/InputStream;

    .line 40
    iput-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->out:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeInput:Z

    .line 44
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeOutput:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->running:Z

    .line 46
    iput-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closed:Z

    const v0, 0x8000

    .line 49
    iput v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->BUFFER_SIZE:I

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/util/IOStreamConnector;->connect(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lcom/sshtools/common/util/IOStreamConnector;->closed:Z

    :cond_0
    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/sshtools/common/util/IOStreamConnector;->running:Z

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method public connect(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 133
    iput-object p1, p0, Lcom/sshtools/common/util/IOStreamConnector;->in:Ljava/io/InputStream;

    .line 134
    iput-object p2, p0, Lcom/sshtools/common/util/IOStreamConnector;->out:Ljava/io/OutputStream;

    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;

    invoke-direct {v1, p0}, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;-><init>(Lcom/sshtools/common/util/IOStreamConnector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 138
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOStreamConnector "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ">>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/sshtools/common/util/IOStreamConnector;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getBytes()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->bytes:J

    return-wide v0
.end method

.method public getLastError()Ljava/lang/Throwable;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->lastError:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->closed:Z

    return v0
.end method

.method public removeListener(Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 123
    iput p1, p0, Lcom/sshtools/common/util/IOStreamConnector;->BUFFER_SIZE:I

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size must be greater than zero!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCloseInput(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeInput:Z

    return-void
.end method

.method public setCloseOutput(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/sshtools/common/util/IOStreamConnector;->closeOutput:Z

    return-void
.end method
