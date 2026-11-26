.class public Lorg/apache/cordova/file/PendingRequests$Request;
.super Ljava/lang/Object;
.source "PendingRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/file/PendingRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Request"
.end annotation


# instance fields
.field private action:I

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private rawArgs:Ljava/lang/String;

.field private requestCode:I

.field final synthetic this$0:Lorg/apache/cordova/file/PendingRequests;


# direct methods
.method static bridge synthetic -$$Nest$fgetrequestCode(Lorg/apache/cordova/file/PendingRequests$Request;)I
    .locals 0

    iget p0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->requestCode:I

    return p0
.end method

.method private constructor <init>(Lorg/apache/cordova/file/PendingRequests;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/apache/cordova/file/PendingRequests$Request;->this$0:Lorg/apache/cordova/file/PendingRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lorg/apache/cordova/file/PendingRequests$Request;->rawArgs:Ljava/lang/String;

    .line 77
    iput p3, p0, Lorg/apache/cordova/file/PendingRequests$Request;->action:I

    .line 78
    iput-object p4, p0, Lorg/apache/cordova/file/PendingRequests$Request;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 79
    invoke-static {p1}, Lorg/apache/cordova/file/PendingRequests;->-$$Nest$fgetcurrentReqId(Lorg/apache/cordova/file/PendingRequests;)I

    move-result p2

    add-int/lit8 p3, p2, 0x1

    invoke-static {p1, p3}, Lorg/apache/cordova/file/PendingRequests;->-$$Nest$fputcurrentReqId(Lorg/apache/cordova/file/PendingRequests;I)V

    iput p2, p0, Lorg/apache/cordova/file/PendingRequests$Request;->requestCode:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/file/PendingRequests;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;Lorg/apache/cordova/file/PendingRequests-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/PendingRequests$Request;-><init>(Lorg/apache/cordova/file/PendingRequests;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->action:I

    return v0
.end method

.method public getCallbackContext()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method public getRawArgs()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->rawArgs:Ljava/lang/String;

    return-object v0
.end method
