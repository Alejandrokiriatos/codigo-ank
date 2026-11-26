.class public interface abstract Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;
.super Ljava/lang/Object;
.source "ComponentInstanceFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sshtools/common/ssh/components/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create()Lcom/sshtools/common/ssh/components/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getKeys()[Ljava/lang/String;
.end method

.method public isEnabledByDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
