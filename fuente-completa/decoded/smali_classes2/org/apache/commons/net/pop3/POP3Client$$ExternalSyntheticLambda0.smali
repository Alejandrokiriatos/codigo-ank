.class public final synthetic Lorg/apache/commons/net/pop3/POP3Client$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/ListIterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ListIterator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/pop3/POP3Client$$ExternalSyntheticLambda0;->f$0:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client$$ExternalSyntheticLambda0;->f$0:Ljava/util/ListIterator;

    invoke-static {v0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->lambda$listUniqueIdentifiers$1(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p1

    return-object p1
.end method
