.class public interface abstract Lcom/sshtools/common/auth/AuthenticationMechanism;
.super Ljava/lang/Object;
.source "AuthenticationMechanism.java"


# virtual methods
.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract processMessage([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startRequest(Ljava/lang/String;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
