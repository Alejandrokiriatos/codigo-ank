.class public interface abstract Lcom/sshtools/common/sftp/SftpExtensionFactory;
.super Ljava/lang/Object;
.source "SftpExtensionFactory.java"


# virtual methods
.method public abstract getExtension(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpExtension;
.end method

.method public abstract getExtensions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/SftpExtension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedExtensions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
