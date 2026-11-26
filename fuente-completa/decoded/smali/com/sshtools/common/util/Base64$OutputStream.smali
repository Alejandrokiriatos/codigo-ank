.class public Lcom/sshtools/common/util/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private bufferLength:I

.field private encode:Z

.field private lineLength:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 617
    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 623
    iput-boolean p2, p0, Lcom/sshtools/common/util/Base64$OutputStream;->encode:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 624
    :goto_0
    iput p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->bufferLength:I

    .line 625
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->buffer:[B

    const/4 p1, 0x0

    .line 626
    iput p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->position:I

    .line 627
    iput p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->lineLength:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    invoke-virtual {p0}, Lcom/sshtools/common/util/Base64$OutputStream;->flush()V

    .line 634
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 635
    iget-object v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->buffer:[B

    .line 638
    iput-object v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    iget v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->position:I

    if-lez v0, :cond_1

    .line 644
    iget-boolean v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/sshtools/common/util/Base64$OutputStream;->position:I

    invoke-static {v1, v2}, Lcom/sshtools/common/util/Base64;->-$$Nest$smencode3to4([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 649
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 658
    iget-object v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->buffer:[B

    iget v1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sshtools/common/util/Base64$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 665
    iget p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->bufferLength:I

    if-lt v2, p1, :cond_2

    .line 666
    iget-boolean p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->encode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 667
    iget-object p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/sshtools/common/util/Base64$OutputStream;->bufferLength:I

    invoke-static {v1, v2}, Lcom/sshtools/common/util/Base64;->-$$Nest$smencode3to4([BI)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 669
    iget p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->lineLength:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->lineLength:I

    .line 671
    invoke-static {}, Lcom/sshtools/common/util/Base64;->-$$Nest$sfgetMAX_LINE_LENGTH()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 672
    iget-object p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-static {}, Lcom/sshtools/common/util/Base64;->-$$Nest$sfgetNEW_LINE()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 673
    iput v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->lineLength:I

    goto :goto_0

    .line 680
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sshtools/common/util/Base64$OutputStream;->buffer:[B

    invoke-static {v1}, Lcom/sshtools/common/util/Base64;->-$$Nest$smdecode4to3([B)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 683
    :cond_1
    :goto_0
    iput v0, p0, Lcom/sshtools/common/util/Base64$OutputStream;->position:I

    :cond_2
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 693
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sshtools/common/util/Base64$OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
