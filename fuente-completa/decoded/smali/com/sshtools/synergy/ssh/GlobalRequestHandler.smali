.class public interface abstract Lcom/sshtools/synergy/ssh/GlobalRequestHandler;
.super Ljava/lang/Object;
.source "GlobalRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/GlobalRequestHandler$GlobalRequestHandlerException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract processGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;Lcom/sshtools/synergy/ssh/ConnectionProtocol;ZLcom/sshtools/common/util/ByteArrayWriter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/GlobalRequest;",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;Z",
            "Lcom/sshtools/common/util/ByteArrayWriter;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/synergy/ssh/GlobalRequestHandler$GlobalRequestHandlerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract supportedRequests()[Ljava/lang/String;
.end method
