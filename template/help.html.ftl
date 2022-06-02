<div class="container container-top">
    <div class="container">
        <a href="/store" class="customer-link" id="help">
            Home 
            <i class="fas fa-angle-right"></i>
        </a>
        <span class="modal-text">Help Center</span>
    </div>
    <div class="row mt-4">
            <div class="customer-menu col col-lg-2 col-md-3 mb-5">
                <span class="modal-text">Help Center</span>
                <ul class="customer-orders-ul">
                    <li>
                        <a href="/store/content/help">Delivery Rates</a>
                    </li>
                    <li>
                        <a href="/store/content/help#delivery">Delivery Times</a>
                    </li>
                    <li>
                        <a href="/store/content/help#customer-pick-up">Customer Pick Up</a>
                    </li>
                    <li>
                        <a href="/store/content/help#how-to-pay">How to Pay</a>
                    </li>
                </ul>
                <a href="/store/content/about" class="customer-link">About POP Shop</a>
                <a href="/store/content/contact" class="customer-link">Contact Us</a>
            </div>
        <div class="col col-lg-9 offset-lg-1 col-12">

        <#include sri.renderSection("${storeInfo.settings.PsstContentLocation}/content/help.md.ftl")>

        </div>
    </div>
</div>