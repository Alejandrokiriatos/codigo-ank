.class public Lcom/sshtools/common/ssh/compression/NoneCompression;
.super Ljava/lang/Object;
.source "NoneCompression.java"

# interfaces
.implements Lcom/sshtools/common/ssh/compression/SshCompression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/compression/NoneCompression$NoneCompressionFactory;
    }
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = "none"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/ssh/compression/NoneCompression;->uncompress([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "none"

    return-object v0
.end method

.method public init(II)V
    .locals 0

    return-void
.end method

.method public uncompress([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    array-length v0, p1

    if-ne p3, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 56
    :cond_1
    :goto_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 57
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
