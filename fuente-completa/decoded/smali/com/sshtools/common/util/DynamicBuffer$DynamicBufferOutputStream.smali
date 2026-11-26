.class Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;
.super Ljava/io/OutputStream;
.source "DynamicBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/util/DynamicBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicBufferOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/util/DynamicBuffer;


# direct methods
.method constructor <init>(Lcom/sshtools/common/util/DynamicBuffer;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/DynamicBuffer;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/common/util/DynamicBuffer;->write([BII)V

    return-void
.end method
