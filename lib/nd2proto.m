function [methodinfo,structs,enuminfo,ThunkLibName]=nd2proto
%ND2PROTO Create structures to define interfaces found in 'Nd2ReadSdk'.

%This function was generated by loadlibrary.m parser version  on Thu Jun 23 12:15:29 2022
%perl options:'Nd2ReadSdk.i -outfile=nd2proto.m -thunkfile=nd2readsdk_thunk_pcwin64.c -header=Nd2ReadSdk.h'
ival={cell(1,0)}; % change 0 to the actual number of functions to preallocate the data.
structs=[];enuminfo=[];fcnNum=1;
fcns=struct('name',ival,'calltype',ival,'LHS',ival,'RHS',ival,'alias',ival,'thunkname', ival);
MfilePath=fileparts(mfilename('fullpath'));
ThunkLibName=fullfile(MfilePath,'nd2readsdk_thunk_pcwin64');
% extern  LIMFILEHANDLE Lim_FileOpenForRead ( LIMCWSTR wszFileName ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='Lim_FileOpenForRead'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='voidPtr'; fcns.RHS{fcnNum}={'uint16Ptr'};fcnNum=fcnNum+1;
% extern  LIMFILEHANDLE Lim_FileOpenForReadUtf8 ( LIMCSTR szFileNameUtf8 ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='Lim_FileOpenForReadUtf8'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='voidPtr'; fcns.RHS{fcnNum}={'int8Ptr'};fcns.alias{fcnNum}='openfile';fcnNum=fcnNum+1;
% extern  void Lim_FileClose ( LIMFILEHANDLE hFile ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='Lim_FileClose'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'voidPtr'};fcns.alias{fcnNum}='closefile';fcnNum=fcnNum+1;
% extern  LIMSIZE Lim_FileGetCoordSize ( LIMFILEHANDLE hFile ); 
fcns.thunkname{fcnNum}='uint64voidPtrThunk';fcns.name{fcnNum}='Lim_FileGetCoordSize'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint64'; fcns.RHS{fcnNum}={'voidPtr'};fcns.alias{fcnNum}='getcoordsize';fcnNum=fcnNum+1;
% extern  LIMUINT Lim_FileGetCoordInfo ( LIMFILEHANDLE hFile , LIMUINT coord , LIMSTR type , LIMSIZE maxTypeSize ); 
fcns.thunkname{fcnNum}='uint32voidPtruint32voidPtruint64Thunk';fcns.name{fcnNum}='Lim_FileGetCoordInfo'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'voidPtr', 'uint32', 'int8Ptr', 'uint64'};fcns.alias{fcnNum}='getcoordinfo';fcnNum=fcnNum+1;
% extern  LIMUINT Lim_FileGetSeqCount ( LIMFILEHANDLE hFile ); 
fcns.thunkname{fcnNum}='uint32voidPtrThunk';fcns.name{fcnNum}='Lim_FileGetSeqCount'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'voidPtr'};fcns.alias{fcnNum}='getnimg';fcnNum=fcnNum+1;
% extern  LIMBOOL Lim_FileGetSeqIndexFromCoords ( LIMFILEHANDLE hFile , const LIMUINT * coords , LIMSIZE coordCount , LIMUINT * seqIdx ); 
fcns.thunkname{fcnNum}='int32voidPtrvoidPtruint64voidPtrThunk';fcns.name{fcnNum}='Lim_FileGetSeqIndexFromCoords'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'voidPtr', 'uint32Ptr', 'uint64', 'uint32Ptr'};fcnNum=fcnNum+1;
% extern  LIMSIZE Lim_FileGetCoordsFromSeqIndex ( LIMFILEHANDLE hFile , LIMUINT seqIdx , LIMUINT * coords , LIMSIZE maxCoordCount ); 
fcns.thunkname{fcnNum}='uint64voidPtruint32voidPtruint64Thunk';fcns.name{fcnNum}='Lim_FileGetCoordsFromSeqIndex'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint64'; fcns.RHS{fcnNum}={'voidPtr', 'uint32', 'uint32Ptr', 'uint64'};fcnNum=fcnNum+1;
% extern  LIMSTR Lim_FileGetAttributes ( LIMFILEHANDLE hFile ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='Lim_FileGetAttributes'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int8Ptr'; fcns.RHS{fcnNum}={'voidPtr'};fcns.alias{fcnNum}='getattributes';fcnNum=fcnNum+1;
% extern  LIMSTR Lim_FileGetMetadata ( LIMFILEHANDLE hFile ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='Lim_FileGetMetadata'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int8Ptr'; fcns.RHS{fcnNum}={'voidPtr'};fcns.alias{fcnNum}='getmeta';fcnNum=fcnNum+1;
% extern  LIMSTR Lim_FileGetFrameMetadata ( LIMFILEHANDLE hFile , LIMUINT uiSeqIndex ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtruint32Thunk';fcns.name{fcnNum}='Lim_FileGetFrameMetadata'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int8Ptr'; fcns.RHS{fcnNum}={'voidPtr', 'uint32'};fcns.alias{fcnNum}='getimagemeta';fcnNum=fcnNum+1;
% extern  LIMSTR Lim_FileGetTextinfo ( LIMFILEHANDLE hFile ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='Lim_FileGetTextinfo'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int8Ptr'; fcns.RHS{fcnNum}={'voidPtr'};fcns.alias{fcnNum}='gettextinfo';fcnNum=fcnNum+1;
% extern  LIMSTR Lim_FileGetExperiment ( LIMFILEHANDLE hFile ); 
fcns.thunkname{fcnNum}='voidPtrvoidPtrThunk';fcns.name{fcnNum}='Lim_FileGetExperiment'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int8Ptr'; fcns.RHS{fcnNum}={'voidPtr'};fcns.alias{fcnNum}='getexp';fcnNum=fcnNum+1;
% extern  LIMRESULT Lim_FileGetImageData ( LIMFILEHANDLE hFile , LIMUINT uiSeqIndex , LIMPICTURE * pPicture ); 
fcns.thunkname{fcnNum}='int32voidPtruint32voidPtrThunk';fcns.name{fcnNum}='Lim_FileGetImageData'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'voidPtr', 'uint32', 's_LIMPICTUREPtr'};fcns.alias{fcnNum}='getimage';fcnNum=fcnNum+1;
% extern  void Lim_FileFreeString ( LIMSTR str ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='Lim_FileFreeString'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'int8Ptr'};fcns.alias{fcnNum}='freestr';fcnNum=fcnNum+1;
% extern  LIMSIZE Lim_InitPicture ( LIMPICTURE * pPicture , LIMUINT width , LIMUINT height , LIMUINT bpc , LIMUINT components ); 
fcns.thunkname{fcnNum}='uint64voidPtruint32uint32uint32uint32Thunk';fcns.name{fcnNum}='Lim_InitPicture'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint64'; fcns.RHS{fcnNum}={'s_LIMPICTUREPtr', 'uint32', 'uint32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
% extern  void Lim_DestroyPicture ( LIMPICTURE * pPicture ); 
fcns.thunkname{fcnNum}='voidvoidPtrThunk';fcns.name{fcnNum}='Lim_DestroyPicture'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'s_LIMPICTUREPtr'};fcns.alias{fcnNum}='destroypic';
structs.s_LIMPICTURE.members=struct('uiWidth', 'uint32', 'uiHeight', 'uint32', 'uiBitsPerComp', 'uint32', 'uiComponents', 'uint32', 'uiWidthBytes', 'uint64', 'uiSize', 'uint64', 'pImageData', 'voidPtr');
methodinfo=fcns;