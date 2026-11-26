.class public interface abstract Lcom/sshtools/common/ssh/components/SshHmac;
.super Ljava/lang/Object;
.source "SshHmac.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshComponent;
.implements Lcom/sshtools/common/ssh/SecureComponent;


# virtual methods
.method public abstract doFinal()[B
.end method

.method public abstract generate(J[BII[BI)V
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getMacLength()I
.end method

.method public abstract getMacSize()I
.end method

.method public abstract init([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract isETM()Z
.end method

.method public abstract update([B)V
.end method

.method public abstract verify(J[BII[BI)Z
.end method
