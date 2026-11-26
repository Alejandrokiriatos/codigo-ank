.class public Lcom/sshtools/synergy/nio/StaticContextFactory;
.super Ljava/lang/Object;
.source "StaticContextFactory.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/ProtocolContextFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/nio/ProtocolContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/synergy/nio/ProtocolContextFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protocolContext:Lcom/sshtools/synergy/nio/ProtocolContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/nio/ProtocolContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sshtools/synergy/nio/StaticContextFactory;->protocolContext:Lcom/sshtools/synergy/nio/ProtocolContext;

    return-void
.end method


# virtual methods
.method public createContext(Lcom/sshtools/synergy/nio/SshEngineContext;Ljava/nio/channels/SocketChannel;)Lcom/sshtools/synergy/nio/ProtocolContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/nio/SshEngineContext;",
            "Ljava/nio/channels/SocketChannel;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/sshtools/synergy/nio/StaticContextFactory;->protocolContext:Lcom/sshtools/synergy/nio/ProtocolContext;

    return-object p1
.end method
