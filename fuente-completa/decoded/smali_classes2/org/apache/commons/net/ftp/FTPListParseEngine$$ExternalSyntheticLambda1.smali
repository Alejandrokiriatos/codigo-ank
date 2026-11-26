.class public final synthetic Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/net/ftp/FTPFileFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/net/ftp/FTPFileFilter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/net/ftp/FTPFileFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/net/ftp/FTPFileFilter;

    check-cast p1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/FTPFileFilter;->accept(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result p1

    return p1
.end method
