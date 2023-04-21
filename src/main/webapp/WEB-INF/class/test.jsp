<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 등록 페이지</title>
<link rel="stylesheet" href="/resources/css/home.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div>
			<div class="aside">
				<div class="jss620">
					<div class="jss618">
						<button class="" type="button">
							<svg
								class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium jss619 css-vubbuv"
								focusable="false" aria-hidden="true" viewBox="0 0 24 24"
								data-testid="ExitToAppIcon">
								<path
									d="M10.09 15.59 11.5 17l5-5-5-5-1.41 1.41L12.67 11H3v2h9.67l-2.58 2.59zM19 3H5c-1.11 0-2 .9-2 2v4h2V5h14v14H5v-4H3v4c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z"></path></svg>
							<span class="MuiTouchRipple-root css-w0pj6f"></span>
						</button>
						<p
							class="MuiTypography-root MuiTypography-body1 jss613 css-1gflypb">등록</p>
					</div>
					<div class="MuiTabs-root css-orq8zk">
						<div class="MuiTabs-scroller MuiTabs-fixed css-1anid1y"
							style="overflow: hidden; margin-bottom: 0px;">
							<div class="MuiTabs-flexContainer css-k008qs" role="tablist">
								<button
									class="MuiButtonBase-root MuiTab-root MuiTab-textColorSecondary Mui-selected jss616 css-1gdieda"
									tabindex="0" type="button" role="tab" aria-selected="true">
									소개<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
								<button
									class="MuiButtonBase-root MuiTab-root MuiTab-textColorSecondary jss616 css-1gdieda"
									tabindex="-1" type="button" role="tab" aria-selected="false">
									금액 및 일정<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
							</div>
							<span class="MuiTabs-indicator css-q8z7wz"
								style="left: 320px; width: 160px; height: 4px;"></span>
						</div>
					</div>
				</div>
				<div class="jss614">
					<button
						class=""
						tabindex="0" type="button">
						<a class="guide" target="_blank"
							href="https://www.notion.so/fc529bc839e1413094bc4314510cd45b">등록
							가이드 보기</a><span class="MuiTouchRipple-root css-w0pj6f"></span>
					</button>
					<button
						class="MuiButtonBase-root MuiButton-root MuiButton-outlined MuiButton-outlinedSecondary MuiButton-sizeMedium MuiButton-outlinedSizeMedium MuiButton-root MuiButton-outlined MuiButton-outlinedSecondary MuiButton-sizeMedium MuiButton-outlinedSizeMedium jss615 css-whcbda"
						tabindex="0" type="button">
						저장<span class="MuiTouchRipple-root css-w0pj6f"></span>
					</button>
				</div>
			</div>

		</div>



		<div class="main">
			<div
				style="display: flex; flex-direction: row; margin: 0px 12px 0px 0px;">
				<div class="jss649">&nbsp;</div>
				<div class="jss647" style="">

					<div style="display: flex; flex-direction: column;">
						<div
							style="display: flex; flex-direction: row; margin: 0px 12px 0px 0px;">
							<div>&nbsp;</div>
							<div class="jss647">
								<button
									class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit jss648 css-13953ch"
									tabindex="0" type="button"
									style="display: flex; justify-content: flex-start;">
									<span
										class="MuiButton-startIcon MuiButton-iconSizeMedium css-6xugel"><svg
											class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium css-vubbuv"
											focusable="false" aria-hidden="true" viewBox="0 0 24 24"
											data-testid="ArrowDropUpIcon">
									<path d="m7 14 5-5 5 5z"></path></svg></span>클래스 소개<span
										class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: row; margin: 0px 12px 0px 0px;">
							<div class="jss649">&nbsp;</div>
							<div class="jss647"
								style="border: 2px solid rgb(0, 150, 136); border-radius: 5px;">
								<button
									class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit css-13953ch"
									tabindex="0" type="button"
									style="display: flex; justify-content: flex-start;">
									STEP.1 카테고리<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
								<svg
									class="MuiSvgIcon-root MuiSvgIcon-colorError MuiSvgIcon-fontSizeSmall css-1e41rt0"
									focusable="false" aria-hidden="true" viewBox="0 0 24 24"
									data-testid="ErrorIcon"
									style="margin-right: 0.5rem; color: rgb(255, 142, 142);">
							<path
										d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"></path></svg>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: row; margin: 0px 12px 0px 0px;">
							<div class="jss649">&nbsp;</div>
							<div class="jss647">
								<button
									class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit css-13953ch"
									tabindex="0" type="button"
									style="display: flex; justify-content: flex-start;">
									STEP.2 강사 소개<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
								<svg
									class="MuiSvgIcon-root MuiSvgIcon-colorError MuiSvgIcon-fontSizeSmall css-1e41rt0"
									focusable="false" aria-hidden="true" viewBox="0 0 24 24"
									data-testid="ErrorIcon"
									style="margin-right: 0.5rem; color: rgb(255, 142, 142);">
							<path
										d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"></path></svg>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: row; margin: 0px 12px 0px 0px;">
							<div class="jss649">&nbsp;</div>
							<div class="jss647">
								<button
									class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit css-13953ch"
									tabindex="0" type="button"
									style="display: flex; justify-content: flex-start;">
									STEP.3 클래스 소개<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
								<svg
									class="MuiSvgIcon-root MuiSvgIcon-colorError MuiSvgIcon-fontSizeSmall css-1e41rt0"
									focusable="false" aria-hidden="true" viewBox="0 0 24 24"
									data-testid="ErrorIcon"
									style="margin-right: 0.5rem; color: rgb(255, 142, 142);">
							<path
										d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"></path></svg>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: row; margin: 0px 12px 0px 0px;">
							<div class="jss649">&nbsp;</div>
							<div class="jss647">
								<button
									class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit css-13953ch"
									tabindex="0" type="button"
									style="display: flex; justify-content: flex-start;">
									STEP.4 커리큘럼<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
								<svg
									class="MuiSvgIcon-root MuiSvgIcon-colorError MuiSvgIcon-fontSizeSmall css-1e41rt0"
									focusable="false" aria-hidden="true" viewBox="0 0 24 24"
									data-testid="ErrorIcon"
									style="margin-right: 0.5rem; color: rgb(255, 142, 142);">
							<path
										d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"></path></svg>
							</div>
						</div>
						<div
							style="display: flex; flex-direction: row; margin: 0px 12px 0px 0px;">
							<div class="jss649">&nbsp;</div>
							<div class="jss647">
								<button
									class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit MuiButton-root MuiButton-text MuiButton-textInherit MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-colorInherit css-13953ch"
									tabindex="0" type="button"
									style="display: flex; justify-content: flex-start;">
									STEP.5 가격<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
								<svg
									class="MuiSvgIcon-root MuiSvgIcon-colorError MuiSvgIcon-fontSizeSmall css-1e41rt0"
									focusable="false" aria-hidden="true" viewBox="0 0 24 24"
									data-testid="ErrorIcon"
									style="margin-right: 0.5rem; color: rgb(255, 142, 142);">
							<path
										d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"></path></svg>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>


		<div style="height: 100%;">
			<div class="jss697">
				<div class="jss700">
					<p
						class="MuiTypography-root MuiTypography-body1 jss699 css-1gflypb">
						클래스 소개</p>
					<div class="jss701">
						<div
							class="MuiStepper-root MuiStepper-horizontal jss702 css-u4p24i">
							<div class="MuiStep-root MuiStep-horizontal css-mro3c9"
								style="height: 22px; width: 22px; padding: 0px; margin: 0px 2px;">
								<span
									class="MuiStepLabel-root MuiStepLabel-horizontal css-1abj2s5"><span
									class="MuiStepLabel-iconContainer Mui-active css-a5nipc"><div
											style="display: flex; align-items: flex-start; justify-content: center; width: 22px; height: 22px; border-radius: 50%; color: rgb(255, 255, 255); background: rgb(0, 150, 136); font-weight: 700;">1</div></span><span
									class="MuiStepLabel-labelContainer css-h2cmlr"><span
										class="MuiStepLabel-label Mui-active css-1cjkksi"> </span></span></span>
							</div>
							<div
								class="MuiStepConnector-root MuiStepConnector-horizontal Mui-disabled css-11qjisw">
								<span
									class="MuiStepConnector-line jss703 MuiStepConnector-lineHorizontal css-95m0ql"></span>
							</div>
							<div class="MuiStep-root MuiStep-horizontal css-mro3c9"
								style="height: 22px; width: 22px; padding: 0px; margin: 0px 2px;">
								<span
									class="MuiStepLabel-root MuiStepLabel-horizontal Mui-disabled css-1abj2s5"><span
									class="MuiStepLabel-iconContainer Mui-disabled css-a5nipc"><div
											style="display: flex; align-items: center; justify-content: center; width: 22px; height: 22px; color: rgb(143, 147, 158);">2</div></span><span
									class="MuiStepLabel-labelContainer css-h2cmlr"><span
										class="MuiStepLabel-label Mui-disabled css-1cjkksi"> </span></span></span>
							</div>
							<div
								class="MuiStepConnector-root MuiStepConnector-horizontal Mui-disabled css-11qjisw">
								<span
									class="MuiStepConnector-line jss703 MuiStepConnector-lineHorizontal css-95m0ql"></span>
							</div>
							<div class="MuiStep-root MuiStep-horizontal css-mro3c9"
								style="height: 22px; width: 22px; padding: 0px; margin: 0px 2px;">
								<span
									class="MuiStepLabel-root MuiStepLabel-horizontal Mui-disabled css-1abj2s5"><span
									class="MuiStepLabel-iconContainer Mui-disabled css-a5nipc"><div
											style="display: flex; align-items: center; justify-content: center; width: 22px; height: 22px; color: rgb(143, 147, 158);">3</div></span><span
									class="MuiStepLabel-labelContainer css-h2cmlr"><span
										class="MuiStepLabel-label Mui-disabled css-1cjkksi"> </span></span></span>
							</div>
							<div
								class="MuiStepConnector-root MuiStepConnector-horizontal Mui-disabled css-11qjisw">
								<span
									class="MuiStepConnector-line jss703 MuiStepConnector-lineHorizontal css-95m0ql"></span>
							</div>
							<div class="MuiStep-root MuiStep-horizontal css-mro3c9"
								style="height: 22px; width: 22px; padding: 0px; margin: 0px 2px;">
								<span
									class="MuiStepLabel-root MuiStepLabel-horizontal Mui-disabled css-1abj2s5"><span
									class="MuiStepLabel-iconContainer Mui-disabled css-a5nipc"><div
											style="display: flex; align-items: center; justify-content: center; width: 22px; height: 22px; color: rgb(143, 147, 158);">4</div></span><span
									class="MuiStepLabel-labelContainer css-h2cmlr"><span
										class="MuiStepLabel-label Mui-disabled css-1cjkksi"> </span></span></span>
							</div>
							<div
								class="MuiStepConnector-root MuiStepConnector-horizontal Mui-disabled css-11qjisw">
								<span
									class="MuiStepConnector-line jss703 MuiStepConnector-lineHorizontal css-95m0ql"></span>
							</div>
							<div class="MuiStep-root MuiStep-horizontal css-mro3c9"
								style="height: 22px; width: 22px; padding: 0px; margin: 0px 2px;">
								<span
									class="MuiStepLabel-root MuiStepLabel-horizontal Mui-disabled css-1abj2s5"><span
									class="MuiStepLabel-iconContainer Mui-disabled css-a5nipc"><div
											style="display: flex; align-items: center; justify-content: center; width: 22px; height: 22px; color: rgb(143, 147, 158);">5</div></span><span
									class="MuiStepLabel-labelContainer css-h2cmlr"><span
										class="MuiStepLabel-label Mui-disabled css-1cjkksi"> </span></span></span>
							</div>
							<div
								class="MuiStepConnector-root MuiStepConnector-horizontal Mui-disabled css-11qjisw">
								<span
									class="MuiStepConnector-line jss703 MuiStepConnector-lineHorizontal css-95m0ql"></span>
							</div>
							<div class="MuiStep-root MuiStep-horizontal css-mro3c9"
								style="height: 22px; width: 22px; padding: 0px; margin: 0px 2px;">
								<span
									class="MuiStepLabel-root MuiStepLabel-horizontal Mui-disabled css-1abj2s5"><span
									class="MuiStepLabel-iconContainer Mui-disabled css-a5nipc"><div
											style="display: flex; align-items: center; justify-content: center; width: 22px; height: 22px; color: rgb(143, 147, 158);">6</div></span><span
									class="MuiStepLabel-labelContainer css-h2cmlr"><span
										class="MuiStepLabel-label Mui-disabled css-1cjkksi"> </span></span></span>
							</div>
							<div
								class="MuiStepConnector-root MuiStepConnector-horizontal Mui-disabled css-11qjisw">
								<span
									class="MuiStepConnector-line jss703 MuiStepConnector-lineHorizontal css-95m0ql"></span>
							</div>
							<div class="MuiStep-root MuiStep-horizontal css-mro3c9"
								style="height: 22px; width: 22px; padding: 0px; margin: 0px 2px;">
								<span
									class="MuiStepLabel-root MuiStepLabel-horizontal Mui-disabled css-1abj2s5"><span
									class="MuiStepLabel-iconContainer Mui-disabled css-a5nipc"><div
											style="display: flex; align-items: center; justify-content: center; width: 22px; height: 22px; color: rgb(143, 147, 158);">7</div></span><span
									class="MuiStepLabel-labelContainer css-h2cmlr"><span
										class="MuiStepLabel-label Mui-disabled css-1cjkksi"> </span></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="jss698">
					<div class="jss704">
						<div class="jss713">
							<h5
								class="MuiTypography-root MuiTypography-body1 MuiTypography-alignCenter jss714 css-5ubadl">
								제목 및 카테고리
								<div class="jss712"></div>
							</h5>
							&nbsp; &nbsp;&nbsp;
						</div>
						<div
							class="MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 jss717 css-zmnxdm">
							<p
								class="MuiTypography-root MuiTypography-body1 jss718 css-1gflypb">클래스/모임
								제목과 카테고리를 등록해주세요</p>
						</div>
						<div class="jss709">
							<div class="jss719">
								<p
									class="MuiTypography-root MuiTypography-body1 jss720 css-1gflypb">클래스
									명&nbsp;</p>
								<p
									class="MuiTypography-root MuiTypography-body1 jss721 css-1gflypb">(필수)</p>
								<button
									class="MuiButtonBase-root MuiIconButton-root MuiIconButton-sizeSmall css-1j7qk7u"
									tabindex="0" type="button" style="margin-top: 1px;">
									<svg
										class="MuiSvgIcon-root MuiSvgIcon-fontSizeSmall css-1k33q06"
										focusable="false" aria-hidden="true" viewBox="0 0 24 24"
										data-testid="HelpOutlineOutlinedIcon"
										style="color: rgb(81, 91, 96);">
										<path
											d="M11 18h2v-2h-2v2zm1-16C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-14c-2.21 0-4 1.79-4 4h2c0-1.1.9-2 2-2s2 .9 2 2c0 2-3 1.75-3 5h2c0-2.25 3-2.5 3-5 0-2.21-1.79-4-4-4z"></path></svg>
									<span class="MuiTouchRipple-root css-w0pj6f"></span>
								</button>
							</div>
							<div class="jss729">
								<div
									class="MuiInputBase-root jss732 MuiInputBase-colorPrimary css-y37jg9">
									<input placeholder="클래스 명을 입력해주세요" type="text" maxlength="50"
										class="MuiInputBase-input jss733 css-mnn31" value="">
								</div>
								<div class="jss730">0/50</div>
							</div>
						</div>
						<div class="jss709">
							<div class="jss719">
								<p
									class="MuiTypography-root MuiTypography-body1 jss720 css-1gflypb">카테고리&nbsp;</p>
								<p
									class="MuiTypography-root MuiTypography-body1 jss721 css-1gflypb">(필수)</p>
							</div>
							<div class="jss710">
								<div
									class="MuiInputBase-root MuiOutlinedInput-root MuiInputBase-colorPrimary MuiInputBase-sizeSmall jss705 css-1vcv3d">
									<div tabindex="0" role="button" aria-expanded="false"
										aria-haspopup="listbox"
										class="MuiSelect-select MuiSelect-outlined MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-182didf">카테고리</div>
									<input aria-hidden="true" tabindex="-1"
										class="MuiSelect-nativeInput css-1k3x8v3" value="none">
									<svg
										class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined css-1636szt"
										focusable="false" aria-hidden="true" viewBox="0 0 24 24"
										data-testid="KeyboardArrowDownIcon">
										<path
											d="M7.41 8.59 12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z"></path></svg>
									<fieldset aria-hidden="true"
										class="MuiOutlinedInput-notchedOutline css-igs3ac">
										<legend class="css-ihdtdm">
											<span class="notranslate">​</span>
										</legend>
									</fieldset>
								</div>
							</div>
						</div>
						<div class="jss734">
							<p
								class="MuiTypography-root MuiTypography-body1 jss735 css-1gflypb">
								•
								<div style="margin-left: 5px;">서브 카테고리는 최대 3개까지 선택하실 수 있어요</div>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	
	
	
<jsp:include page="footer.jsp"></jsp:include></
							body>
</html>