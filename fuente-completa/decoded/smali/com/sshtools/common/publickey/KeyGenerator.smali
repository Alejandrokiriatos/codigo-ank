.class public interface abstract Lcom/sshtools/common/publickey/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/Component;


# virtual methods
.method public abstract generateKey(I)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method
