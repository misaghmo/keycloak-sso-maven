<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400&display=swap" />
	<style type="text/css">
		@media only screen and (max-width: 480px) {

			table[class="makeWide"] {
				width: 100%;
			}

			p[class="toLeft"] {
				text-align: left !important;
			}

			td[class="footer"] {
				padding: 10px 35px 15px 10px !important;
			}
		}
	</style>

</head>

<body>
	<div style="width: 100%; height: 75px; background-color: #ffffff">
		<table cellpadding="0" cellspacing="0"
			style="border-bottom: 1px solid #DCDCDC; max-width: 600px; margin: 0 auto; width: 100%">
			<tbody>
				<tr>
					<td style="background-color: #ffffff; font-size: 0; padding: 16px 0;">
						<a href="http://www.payoneer.com/" target="_blank">
							<img src="https://assets.optile.net/logos/home-payoneer-logo@2x.png" alt="payoneer"
								title="payoneer" width="120"
								srcset="https://assets.optile.net/logos/home-payoneer-logo@3x.png 2x"
								style="text-decoration: none; border: none" />
						</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div style="max-width: 600px; margin: 0 auto; width: 100%; background-color: #ffffff">
		<div
			style="margin: 32px 0 0; color: #636b78; font-size: 16px; font-family: 'Roboto Condensed', arial, sans-serif; line-height: 20px">
			<p style="margin: 0 0 24px">Dear ${user.getUsername()},</p>
			<p style="margin: 0 0 24px">Someone just requested to change your Payoneer account's credentials. <br />If
				this was you, click on the link below to reset them.</p>
			<p style="margin: 0 0 32px"><a href="${link}" target="_blank" style="color: #399BDA">${link}</a></p>
			<p style="margin: 0 0 24px">This link will expire within ${linkExpiration} minutes.</p>
			<p style="margin: 0 0 40px">If you don't want to reset your credentials, just ignore this message and
				nothing will be changed.</p>
			<p style="margin: 0 0 56px">Best regards,<br /> Your Payoneer Team</p>
		</div>
	</div>

	<div style="width: 100%; max-height: 201px; background-color:#ffffff">
		<table cellpadding="0" cellspacing="0"
			style="font-family: 'Roboto Condensed', arial, helvetica, sans-serif; max-width: 600px; margin: 0 auto; width: 100%; background-color:#ffffff;  border-top: 1px solid #DCDCDC;">
			<tbody>
				<tr>
					<td>
						<table border="0" cellpadding="0" cellspacing="0"
							style="font-family: 'Roboto Condensed', arial, helvetica, sans-serif; max-width: 500px; color: #636b78;">
							<tbody>
								<tr>
									<td class="footer" style="padding: 24px 0 4px 0;">
										<p
											style=" margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 20px;">
											© 2005-2023 Payoneer, All Rights Reserved
									</td>
								</tr>
								<tr>
									<td class="footer" style="padding: 4px 0;">
										<p
											style=" margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 20px;">
											If you have any questions please contact us:
									</td>
								</tr>
								<tr>
									<td class="footer" style="padding: 4px 0;">
										<p
											style=" margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 20px;">
											<a href="https://payoneer.custhelp.com/app/home"
												style="color: #399BDA; ">Payoneer Checkout services</a> | 
											<a href="mailto:optilesupport@payoneer.com"
												style="color: #399BDA; ">Payment Orchestration Platform services</a>
									</td>
								</tr>
								<tr>
									<td class="footer" style="padding: 4px 0 24px 0;">
										<p
											style=" margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 20px;">
											For more information please 
											<a href="http://www.payoneer.com"
												style="color: #399BDA; ">visit us</a>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

</body>

</html>