function varargout = deteksitepi(varargin)
% DETEKSITEPI M-file for deteksitepi.fig
%      DETEKSITEPI, by itself, creates a new DETEKSITEPI or raises the existing
%      singleton*.
%
%      H = DETEKSITEPI returns the handle to a new DETEKSITEPI or the handle to
%      the existing singleton*.
%
%      DETEKSITEPI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DETEKSITEPI.M with the given input arguments.
%
%      DETEKSITEPI('Property','Value',...) creates a new DETEKSITEPI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before deteksitepi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to deteksitepi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help deteksitepi

% Last Modified by GUIDE v2.5 07-Nov-2021 23:25:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @deteksitepi_OpeningFcn, ...
                   'gui_OutputFcn',  @deteksitepi_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before deteksitepi is made visible.
function deteksitepi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to deteksitepi (see VARARGIN)

% Choose default command line output for deteksitepi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes deteksitepi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = deteksitepi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
open=guidata(gcbo);
[namafile,direktori]=uigetfile({'*.jpg;*.bmp;*.tif'},'OpenImage');
I=imread(namafile);
set(open.figure1,'CurrentAxes',open.axes1);
set(imagesc(I));colormap('gray');
set(open.axes1,'Userdata',I);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
I=get(proyek.axes1,'Userdata');
gray=rgb2gray(I);
BW=edge(gray,'prewitt');
set(proyek.figure1,'CurrentAxes',proyek.axes2);
set(imshow(BW));
set(proyek.axes2,'Userdata',I);
redo_Callback(hObject,eventdata, handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
I=get(proyek.axes1,'Userdata');
gray=rgb2gray(I);
BW=edge(gray,'roberts');
set(proyek.figure1,'CurrentAxes',proyek.axes2);
set(imshow(BW));
set(proyek.axes2,'Userdata',A);
redo_Callback(hObject,eventdata, handles);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
I=get(proyek.axes1,'Userdata');
gray=rgb2gray(I);
BW=edge(gray,'canny');
set(proyek.figure1,'CurrentAxes',proyek.axes2);
set(imshow(BW));
set(proyek.axes2,'Userdata',A);
redo_Callback(hObject,eventdata, handles);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
I=get(proyek.axes1,'Userdata');
gray=rgb2gray(I);
BW=edge(gray,'sobel');
set(proyek.figure1,'CurrentAxes',proyek.axes2);
set(imshow(BW));
set(proyek.axes2,'Userdata',A);
redo_Callback(hObject,eventdata, handles);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
proyek=guidata(gcbo);
I=get(proyek.axes1,'Userdata');
gray=rgb2gray(I);
BW=edge(gray,'log');
set(proyek.figure1,'CurrentAxes',proyek.axes2);
set(imshow(BW));
set(proyek.axes2,'Userdata',A);
redo_Callback(hObject,eventdata, handles);


