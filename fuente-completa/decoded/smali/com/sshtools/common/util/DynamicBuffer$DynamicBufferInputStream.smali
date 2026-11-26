.class Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;
.super Ljava/io/InputStream;
.source "DynamicBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/util/DynamicBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicBufferInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/util/DynamicBuffer;


# direct methods
.method constructor <init>(Lcom/sshtools/common/util/DynamicBuffer;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;->this$0:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/common/util/DynamicBuffer;->read([BII)I

    move-result p1

    return p1
.end method
