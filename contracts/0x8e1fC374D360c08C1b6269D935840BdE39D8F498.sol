contract main {




// =====================  Runtime code  =====================


address adminAddress;
array of struct buyerDatabase;
array of struct sellerDatabase;
array of struct escrowDatabase;
mapping of uint256 checkBalance;
mapping of uint256 escrowFee;

function sellerDatabase(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < sellerDatabase[arg1].field_0
    return sellerDatabase[arg1][arg2].field_0, sellerDatabase[arg1][arg2].field_256
}

function escrowFee(address arg1) {
    require calldata.size - 4 >= 32
    return escrowFee[arg1]
}

function CheckBalance(address arg1) {
    require calldata.size - 4 >= 32
    return checkBalance[address(arg1)]
}

function buyerDatabase(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < buyerDatabase[arg1].field_0
    return buyerDatabase[arg1][arg2].field_0, 
           buyerDatabase[arg1][arg2].field_256,
           buyerDatabase[arg1][arg2].field_512,
           buyerDatabase[arg1][arg2].field_768,
           buyerDatabase[arg1][arg2].field_1024,
           bool(buyerDatabase[arg1][arg2].field_1280),
           bool(buyerDatabase[arg1][arg2].field_1288),
           bool(buyerDatabase[arg1][arg2].field_1296),
           buyerDatabase[arg1][arg2].field_1536
}

function escrowDatabase(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < escrowDatabase[arg1].field_0
    return escrowDatabase[arg1][arg2].field_0, escrowDatabase[arg1][arg2].field_256
}

function Funds(address arg1) {
    require calldata.size - 4 >= 32
    return checkBalance[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_5b6f032e(?) payable {
    require calldata.size - 4 >= 32
    checkBalance[address(arg1)] += msg.value
}

function WithdrawFunds() {
    checkBalance[address(msg.sender)] = 0
    call msg.sender with:
       value checkBalance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function buyerFundRelease(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= buyerDatabase[address(msg.sender)].field_0:
        revert with 0, 'Invalid request'
    require arg1 < buyerDatabase[address(msg.sender)].field_0
    if buyerDatabase[address(msg.sender)][arg1].field_1288:
        revert with 0, 'Invalid request'
    require arg1 < buyerDatabase[address(msg.sender)].field_0
    if buyerDatabase[address(msg.sender)][arg1].field_1296:
        revert with 0, 'Invalid request'
    require arg1 < buyerDatabase[address(msg.sender)].field_0
    buyerDatabase[address(msg.sender)][arg1].field_1288 = 1
    require arg1 < buyerDatabase[address(msg.sender)].field_0
    require arg1 < buyerDatabase[address(msg.sender)].field_0
    require arg1 < buyerDatabase[address(msg.sender)].field_0
    require arg1 < buyerDatabase[address(msg.sender)].field_0
    checkBalance[stor1[address(msg.sender)][arg1].field_256] += buyerDatabase[address(msg.sender)][arg1].field_1024
    checkBalance[stor1[address(msg.sender)][arg1].field_512] += buyerDatabase[address(msg.sender)][arg1].field_768
}

function sellerRefund(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sellerDatabase[address(msg.sender)].field_0
    require arg1 < sellerDatabase[address(msg.sender)].field_0
    require sellerDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor2[address(msg.sender)][arg1].field_0].field_0
    require not buyerDatabase[stor2[address(msg.sender)][arg1].field_0][stor2[address(msg.sender)][arg1].field_256].field_1288
    require sellerDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor2[address(msg.sender)][arg1].field_0].field_0
    require not buyerDatabase[stor2[address(msg.sender)][arg1].field_0][stor2[address(msg.sender)][arg1].field_256].field_1296
    require sellerDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor2[address(msg.sender)][arg1].field_0].field_0
    require sellerDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor2[address(msg.sender)][arg1].field_0].field_0
    require sellerDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor2[address(msg.sender)][arg1].field_0].field_0
    require sellerDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor2[address(msg.sender)][arg1].field_0].field_0
    buyerDatabase[stor2[address(msg.sender)][arg1].field_0][stor2[address(msg.sender)][arg1].field_256].field_1296 = 1
    checkBalance[stor2[address(msg.sender)][arg1].field_0] += buyerDatabase[stor2[address(msg.sender)][arg1].field_0][stor2[address(msg.sender)][arg1].field_256].field_1024
    checkBalance[stor1[stor2[address(msg.sender)][arg1].field_0][stor2[address(msg.sender)][arg1].field_256].field_512] += buyerDatabase[stor2[address(msg.sender)][arg1].field_0][stor2[address(msg.sender)][arg1].field_256].field_768
}

function sub_64eac66b(?) payable {
    require calldata.size - 4 >= 96
    require msg.value > 0
    require arg2 != msg.sender
    checkBalance[stor0] += msg.value / 400
    sellerDatabase[address(arg1)].field_0++
    sellerDatabase[address(arg1)][sellerDatabase[address(arg1)].field_0].field_0 = msg.sender
    sellerDatabase[address(arg1)][sellerDatabase[address(arg1)].field_0].field_256 = buyerDatabase[address(msg.sender)].field_0
    escrowDatabase[address(arg2)].field_0++
    escrowDatabase[address(arg2)][escrowDatabase[address(arg2)].field_0].field_0 = msg.sender
    escrowDatabase[address(arg2)][escrowDatabase[address(arg2)].field_0].field_256 = buyerDatabase[address(msg.sender)].field_0
    buyerDatabase[address(msg.sender)].field_0++
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_0 = msg.sender
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_256 = arg1
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_512 = arg2
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_768 = escrowFee[address(arg2)] * msg.value / 1000
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_1024 = msg.value - (msg.value / 400) - (escrowFee[address(arg2)] * msg.value / 1000)
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_1280 = 0
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_1288 = 0
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_1296 = 0
    buyerDatabase[address(msg.sender)][buyerDatabase[address(msg.sender)].field_0].field_1536 = arg3
    return 1
}

function escrowDecision(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < escrowDatabase[address(msg.sender)].field_0
    require arg1 < escrowDatabase[address(msg.sender)].field_0
    require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
    require not buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_1288
    require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
    require bool(buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_1280) == 1
    require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
    require not buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_1296
    require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
    require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
    if not arg2:
        require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
        buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_1296 = 1
        checkBalance[stor3[address(msg.sender)][arg1].field_0] += buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_1024
        checkBalance[address(msg.sender)] += buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_768
    else:
        if arg2 == 1:
            require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
            buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_1288 = 1
            require escrowDatabase[address(msg.sender)][arg1].field_256 < buyerDatabase[stor3[address(msg.sender)][arg1].field_0].field_0
            checkBalance[stor1[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_256] += buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_1024
            checkBalance[address(msg.sender)] += buyerDatabase[stor3[address(msg.sender)][arg1].field_0][stor3[address(msg.sender)][arg1].field_256].field_768
}



}
