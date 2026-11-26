.class public Lcom/sshtools/synergy/ssh/ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelOutputStream.java"


# instance fields
.field channel:Lcom/sshtools/synergy/ssh/ChannelNG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "*>;"
        }
    .end annotation
.end field

.field sentEOF:Z

.field type:I


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "*>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->type:I

    .line 38
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "*>;I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 42
    iput p2, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->type:I

    .line 43
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->sentEOF:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    const-string v2, "The channel\'s OutputStream has been closed"

    invoke-virtual {v1, v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendEOF()V

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->sentEOF:Z

    .line 73
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->type:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    int-to-byte p1, p1

    new-array v3, v3, [B

    aput-byte p1, v3, v2

    invoke-virtual {v1, v3, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendExtendedData([BI)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    int-to-byte p1, p1

    new-array v1, v3, [B

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock([B)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->type:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendExtendedData([BIII)V

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendData([BII)V

    return-void
.end method
