.class public Lcom/sshtools/common/ssh/Packet;
.super Lcom/sshtools/common/util/ByteArrayWriter;
.source "Packet.java"


# instance fields
.field markedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x88b8

    .line 39
    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/Packet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x4

    .line 43
    invoke-direct {p0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>(I)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/sshtools/common/ssh/Packet;->markedPosition:I

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/ssh/Packet;->buf:[B

    iget v1, p0, Lcom/sshtools/common/ssh/Packet;->count:I

    add-int/lit8 v1, v1, -0x4

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 62
    iget-object v0, p0, Lcom/sshtools/common/ssh/Packet;->buf:[B

    iget v1, p0, Lcom/sshtools/common/ssh/Packet;->count:I

    add-int/lit8 v1, v1, -0x4

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 63
    iget-object v0, p0, Lcom/sshtools/common/ssh/Packet;->buf:[B

    iget v1, p0, Lcom/sshtools/common/ssh/Packet;->count:I

    add-int/lit8 v1, v1, -0x4

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 64
    iget-object v0, p0, Lcom/sshtools/common/ssh/Packet;->buf:[B

    iget v1, p0, Lcom/sshtools/common/ssh/Packet;->count:I

    add-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-void
.end method

.method public position()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sshtools/common/ssh/Packet;->count:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/sshtools/common/util/ByteArrayWriter;->reset()V

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setPosition(I)I
    .locals 1

    .line 50
    iget v0, p0, Lcom/sshtools/common/ssh/Packet;->count:I

    .line 51
    iput p1, p0, Lcom/sshtools/common/ssh/Packet;->count:I

    return v0
.end method
