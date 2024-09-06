@extends('layouts.app')

@section('content')
<section class="mid-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12"> 
                <!-- Breadcrumb -->
                <div id="navBreadCrumb">
                    <a href="/">Home</a>&nbsp;<span class="separator">//</span>&nbsp; Add Customer
                </div>

                <!-- Heading Section -->
                <div class="centerColumn" id="createAcctDefault">
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <h1 id="createAcctDefaultHeading" class="back cust_hd">Add Customer</h1>
                        </div>
                        <div class="col-md-4">
                            <h4 id="createAcctDefaultLoginLink" class="alrdy_login">
                                <i class="fa fa-lock cust_iccn2"></i>&nbsp;Secure Login<br>
                                already have an account? <a href="/login" class="signin_link">sign in now</a>.
                            </h4>
                        </div>
                    </div>
                    <div class="clearBoth"></div>

                    <!-- Form Section -->
                    <div class="col-md-8">
                        <form name="create_account" action="{{ route('customer.store') }}" method="post" class="form-inline" id="create-form-inline" onsubmit="return check_form(create_account);">
                            @csrf
                            <input type="hidden" name="action" value="process">
                            <input type="hidden" name="email_pref_html" value="email_format">

                            <!-- Personal Details Section -->
                            <div class="col-left_new">
                                <div id="billing-address-wrapper" class="login-details-wrapper bg_cls">
                                    <h2 class="top_hdng">Personal Details</h2><br>
                                    <div class="container">
                                        <div class="field-gender gndr_brd">
                                            <input type="radio" name="gender" value="m" id="gender-male">
                                            <label class="radioButtonLabel gendr_txt" for="gender-male">Mr.</label>
                                            <input type="radio" name="gender" value="f" id="gender-female">
                                            <label class="radioButtonLabel gendr_txt" for="gender-female">Ms.</label>
                                        </div>
                                        <div class="alert alert-info gender" id="gender" style="display:none">
                                            <strong>Info!</strong> Indicates a neutral informative change or action.
                                        </div>
                                        <div class="pull-right validate_txt">
                                            <p>Fields marked with an asterisk(*) are required.</p>
                                        </div>
                                        <div class="clearBoth"></div>

                                        <!-- First Name -->
                                        <div class="form-group cust_formgrop">
                                            <input type="text" name="firstname" size="33" maxlength="32" id="firstname" placeholder="First Name*" required>
                                            <div class="alert alert-info firstname" style="display:none">
                                                <strong>Info!</strong> Indicates a neutral informative change or action.
                                            </div>
                                        </div>

                                        <!-- Last Name -->
                                        <div class="form-group cust_formgrop">
                                            <input type="text" name="lastname" size="33" maxlength="32" id="lastname" placeholder="Last Name*" required>
                                            <div class="alert alert-info lastname" style="display:none">
                                                <strong>Info!</strong> Indicates a neutral informative change or action.
                                            </div>
                                        </div>

                                        <!-- Telephone -->
                                        <div class="form-group cust_formgrop">
                                            <input type="text" name="telephone" size="33" maxlength="32" id="telephone" placeholder="Telephone*" required>
                                            <div class="alert alert-info telephone" style="display:none">
                                                <strong>Info!</strong> Indicates a neutral informative change or action.
                                            </div>
                                        </div>

                                        <!-- Company Name -->
                                        <div class="form-group cust_formgrop_cmpny">
                                            <input type="text" name="company" size="41" maxlength="64" autocomplete="off" id="company" placeholder="Company Name">
                                            <div class="alert alert-info company" style="display:none">
                                                <strong>Info!</strong> Indicates a neutral informative change or action.
                                            </div>
                                        </div>

                                        <!-- Street Address -->
                                        <div class="form-group cust_formgrop street_custom_addr">
                                            <input type="text" name="street_address" size="41" maxlength="64" autocomplete="off" id="street-address" placeholder="Street Address*" required>
                                            <div class="alert alert-info street-address" style="display:none">
                                                <strong>Info!</strong> Indicates a neutral informative change or action.
                                            </div>
                                        </div>

                                        <!-- Suburb -->
                                        <div class="form-group cust_formgrop">
                                            <input type="text" name="suburb" size="33" maxlength="32" id="suburb" placeholder="Apt., suite, unit, etc.">
                                        </div>

                                        <!-- Buzzer Code -->
                                        <div class="form-group cust_formgrop">
                                            <input type="text" name="buzzer" size="33" maxlength="32" id="buzzerCode" placeholder="Buzzer Code">
                                        </div>

                                        <!-- City -->
                                        <div class="form-group cust_formgrop">
                                            <input type="text" name="city" size="33" maxlength="32" id="city" placeholder="City*" required>
                                            <div class="alert alert-info city" style="display:none">
                                                <strong>Info!</strong> Indicates a neutral informative change or action.
                                            </div>
                                        </div>

                                        <!-- Postal Code -->
                                        <div class="form-group cust_formgrop">
                                            <input type="text" name="postcode" size="11" maxlength="10" id="postcode" placeholder="Postal Code*" autocomplete="off" required>
                                            <div class="alert alert-info postcode" style="display:none">
                                                <strong>Info!</strong> Indicates a neutral informative change or action.
                                            </div>
                                        </div>

                                        <!-- State Selection -->
                                        <div class="form-group select-state cust_formgrop">
                                            <select name="zone_id" id="stateZone" autocomplete="off" required>
                                                <option value="" selected="selected">Please select ...</option>
                                                <option value="AB">Alberta</option>
                                                <option value="BC">British Columbia</option>
                                                <option value="MB">Manitoba</option>
                                                <option value="NB">New Brunswick</option>
                                                <option value="NL">Newfoundland</option>
                                                <option value="NT">Northwest Territories</option>
                                                <option value="NS">Nova Scotia</option>
                                                <option value="NU">Nunavut</option>
                                                <option value="ON">Ontario</option>
                                                <option value="PE">Prince Edward Island</option>
                                                <option value="QC">Quebec</option>
                                                <option value="SK">Saskatchewan</option>
                                                <option value="YT">Yukon Territory</option>
                                            </select>
                                            <div class="alert alert-info stateZone" style="display:none">
                                                <strong>Info!</strong> Please select a state from the dropdown list.
                                            </div>
                                        </div>

                                        <!-- Country Selection -->
                                        <div class="form-group country-custom cust_formgrop">
                                            <select name="zone_country_id" id="country" required>
                                                <option value="">Please Choose Your Country</option>
                                                <option value="38" selected="selected">Canada</option>
                                                <option value="246">United States</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Login Details Section -->
                            <div class="col-right_new">
                                <div class="login-details-wrapper bg_cls">
                                    <h2 class="top_hdng">Login Details</h2><br>

                                    <!-- Email Address -->
                                    <div class="form-group cust_formgroplgn">
                                        <input type="email" name="email_address" size="41" maxlength="96" id="email-address" placeholder="Email example@example.com*" required>
                                        <div class="alert alert-info email-address" style="display:none">
                                            <strong>Info!</strong> Indicates a neutral informative change or action.
                                        </div>
                                    </div>

                                    <!-- Email CC -->
                                    <div class="form-group cust_formgroplgn">
                                        <input type="email" name="email_cc" size="41" maxlength="96" id="email-address-cc" placeholder="Email CC example@example.com">
                                    </div>

                                    <!-- Password -->
                                    <div class="form-group cust_formgroplgn">
                                        <input type="password" name="password" size="41" maxlength="40" id="password-new" placeholder="Password*" required>
                                        <div class="alert alert-info password" style="display:none">
                                            <strong>Info!</strong> Indicates a neutral informative change or action.
                                        </div>
                                    </div>

                                    <!-- Confirm Password -->
                                    <div class="form-group cust_formgroplgn">
                                        <input type="password" name="confirmation" size="41" maxlength="40" id="password-confirm" placeholder="Confirm Password*" required>
                                        <div class="alert alert-info password-confirm" style="display:none">
                                            <strong>Info!</strong> Indicates a neutral informative change or action.
                                        </div>
                                    </div>

                                    <!-- Submit Button -->
                                    <div class="submit-btn form-group cust_formgroplgn mt-10">
                                        <input type="hidden" name="role"  id="role" value="customer">
                                        <input type="hidden" name="role"  id="role" value="0">
                                        <button type="submit" class="btn btn-primary" id="register-submit">Create Account</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                    <!-- Login Section -->
                    <div class="col-md-4">
                            <div class="rightwidgrt">
                                <div class="col-md-12">
                                    <div class="right-widgt">
                                        <h1 class="text-center">WHY SIGN UP?</h1>
                                        <p class="txt_pp">By creating a customer account you'll enjoy some of these
                                            benefits:</p>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="clsfrst">
                                            <div class="cst_cl4 cst_cl4_new">
                                                <div class="lft_imp">
                                                    <img src="images/faster_checkout.png">
                                                </div>
                                                <div class="txt_r">
                                                    <h5 class="hd_rsd">CHECK OUT FASTER</h5>
                                                    Your account will save your information. So, there is no longer the need
                                                    to retype your address each time you place a new order.
                                                </div>
                                                <div class="clearBoth"></div>
                                            </div>
                                            <div class="cst_cl4 cst_cl4_new">
                                                <div class="lft_imp">
                                                    <img src="images/easyrecord.png">
                                                </div>
                                                <div class="txt_r">
                                                    <h5 class="hd_rsd">EASY REORDERING</h5>
                                                    Easily re-order items you have ordered in the past, just log into your
                                                    account and place an exact replica of your previous order.
                                                </div>
                                                <div class="clearBoth"></div>
                                            </div>
                                            <div class="cst_cl4 cst_cl4_new">
                                                <div class="lft_imp">
                                                    <img src="images/icon_3.png">
                                                </div>
                                                <div class="txt_r">
                                                    <h5 class="hd_rsd">SAVE YOUR SHOPPING CART</h5>
                                                    When you are logged into your account,your shopping cart information
                                                    will be saved for the next time you visit.
                                                </div>
                                                <div class="clearBoth"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearBoth"></div>
                                    <br>
                                    <p class="txt_pp">No Risk.Shop without worry.</p>
                                    <div class="col-md-12">
                                        <div class="clsfsec">
                                            <div class="cst_cl4 cst_cl4_new">
                                                <div class="lft_imp">
                                                    <img src="images/lowesticon.png">
                                                </div>
                                                <div class="txt_r sub2">
                                                    <h5 class="hd_rsd">LOWEST</h5>
                                                    Price Guaranteed
                                                </div>
                                                <div class="clearBoth"></div>
                                            </div>
                                            <div class="clearBoth"></div>
                                            <div class="cst_cl4 cst_cl4_new">
                                                <div class="lft_imp">
                                                    <img src="images/iconnee333.png">
                                                </div>
                                                <div class="txt_r sub2">
                                                    <h5 class="hd_rsd">100%</h5>
                                                    Bank Acceptance Guarantee
                                                </div>
                                                <div class="clearBoth"></div>
                                            </div>
                                            <div class="clearBoth"></div>
                                            <div class="cst_cl4 cst_cl4_new">
                                                <div class="lft_imp">
                                                    <img src="images/icon33ne.png">
                                                </div>
                                                <div class="txt_r sub2">
                                                    <h5 class="hd_rsd">97%</h5>
                                                    Customer Retention
                                                </div>
                                                <div class="clearBoth"></div>
                                            </div>
                                            <div class="clearBoth"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearBoth"></div>
                            </div>
                            <br>
                            <div class="help_link text-center">
                                <i class="fa fa-question cust_iccn" data-placement="top" data-toggle="popover"
                                    title="" data-content="" data-original-title=""></i>
                                Have a question? <a href="/faq" class="faq_link" target="_blank">Read our FAQ's</a>.
                            </div>
                        </div>
                    <div class="clearBoth"></div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Validation Script -->
<script>
    function check_form(form) {
        let valid = true;
        let alertMessages = {
            firstname: 'First name is required',
            lastname: 'Last name is required',
            telephone: 'Telephone is required',
            street_address: 'Street address is required',
            city: 'City is required',
            postcode: 'Postal code is required',
            zone_id: 'State is required',
            country: 'Country is required',
            email_address: 'Email address is required',
            password: 'Password is required',
            confirmation: 'Password confirmation is required',
        };

        for (const field in alertMessages) {
            let element = form[field];
            if (!element.value) {
                valid = false;
                document.querySelector(`.${field}`).style.display = 'block';
                document.querySelector(`.${field}`).innerHTML = `<strong>Info!</strong> ${alertMessages[field]}`;
            } else {
                document.querySelector(`.${field}`).style.display = 'none';
            }
        }

        // Check password match
        if (form['password'].value !== form['confirmation'].value) {
            valid = false;
            document.querySelector('.password-confirm').style.display = 'block';
            document.querySelector('.password-confirm').innerHTML = `<strong>Info!</strong> Passwords do not match.`;
        } else {
            document.querySelector('.password-confirm').style.display = 'none';
        }

        return valid;
    }
</script>
@endsection
