.class public final synthetic Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/net/ftp/FTPListParseEngine;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/net/ftp/FTPListParseEngine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/net/ftp/FTPListParseEngine;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/net/ftp/FTPListParseEngine;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->lambda$getFileList$0$org-apache-commons-net-ftp-FTPListParseEngine(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method
