.class public Lcom/sshtools/common/util/SimpleASNWriter;
.super Ljava/lang/Object;
.source "SimpleASNWriter.java"


# instance fields
.field private data:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public write([B)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public writeData([B)V
    .locals 3

    .line 62
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeLength(I)V

    .line 63
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public writeLength(I)V
    .locals 2

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/util/SimpleASNWriter;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
