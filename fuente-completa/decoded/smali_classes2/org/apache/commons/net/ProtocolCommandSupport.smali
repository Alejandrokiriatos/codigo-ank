.class public Lorg/apache/commons/net/ProtocolCommandSupport;
.super Ljava/lang/Object;
.source "ProtocolCommandSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6f449111453ca76aL


# instance fields
.field private final listeners:Lorg/apache/commons/net/util/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/net/util/ListenerList<",
            "Lorg/apache/commons/net/ProtocolCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 56
    iput-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->source:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$fireCommandSent$0(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 78
    invoke-interface {p1, p0}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolCommandSent(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    return-void
.end method

.method static synthetic lambda$fireReplyReceived$1(Lorg/apache/commons/net/ProtocolCommandEvent;Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 0

    .line 94
    invoke-interface {p1, p0}, Lorg/apache/commons/net/ProtocolCommandListener;->protocolReplyReceived(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Serialization is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Serialization is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    return-void
.end method

.method public fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandEvent;

    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->source:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    new-instance p2, Lorg/apache/commons/net/ProtocolCommandSupport$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Lorg/apache/commons/net/ProtocolCommandSupport$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/util/ListenerList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public fireReplyReceived(ILjava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandEvent;

    iget-object v1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->source:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/net/ProtocolCommandEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 94
    iget-object p1, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    new-instance p2, Lorg/apache/commons/net/ProtocolCommandSupport$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lorg/apache/commons/net/ProtocolCommandSupport$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/net/ProtocolCommandEvent;)V

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/util/ListenerList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public getListenerCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->getListenerCount()I

    move-result v0

    return v0
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/net/ProtocolCommandSupport;->listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    return-void
.end method
