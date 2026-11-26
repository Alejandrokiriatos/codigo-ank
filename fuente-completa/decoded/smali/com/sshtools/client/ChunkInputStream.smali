.class public Lcom/sshtools/client/ChunkInputStream;
.super Ljava/io/InputStream;
.source "ChunkInputStream.java"


# instance fields
.field file:Lcom/sshtools/common/files/AbstractFileRandomAccess;

.field length:J


# direct methods
.method public constructor <init>(Lcom/sshtools/common/files/AbstractFileRandomAccess;J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sshtools/client/ChunkInputStream;->file:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    .line 37
    iput-wide p2, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-wide v0, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-wide v0, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sshtools/client/ChunkInputStream;->file:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->read()I

    move-result v0

    .line 49
    iget-wide v1, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-wide v0, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    int-to-long v2, p3

    .line 58
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 59
    iget-object v0, p0, Lcom/sshtools/client/ChunkInputStream;->file:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0, p1, p2, p3}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->read([BII)I

    move-result p1

    .line 60
    iget-wide p2, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/sshtools/client/ChunkInputStream;->length:J

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
