.class public interface abstract Lcom/sshtools/common/ssh/compression/SshCompression;
.super Ljava/lang/Object;
.source "SshCompression.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshComponent;


# static fields
.field public static final DEFLATER:I = 0x1

.field public static final INFLATER:I


# virtual methods
.method public abstract compress([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract init(II)V
.end method

.method public abstract uncompress([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
