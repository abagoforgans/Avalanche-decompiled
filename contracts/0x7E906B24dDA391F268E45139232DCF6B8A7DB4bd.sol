contract main {




// =====================  Runtime code  =====================


const getCurrentTimestamp = block.timestamp

const MAX_AMOUNT_PER_PERSON = 5

const PRICE = 1


address owner;
address stor1;
address LOVEAddress;
address MIMAddress;
address ADMINAddress;
uint256 totalWhiteListed;
uint8 saleStarted;
uint8 stor6; offset 8
uint8 whiteListEnabled; offset 16
uint8 cancelled; offset 24
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;

function LOVE() payable {
    return LOVEAddress
}

function getCurrentWhiteListCount() payable {
    return totalWhiteListed
}

function ADMIN() payable {
    return ADMINAddress
}

function saleStarted() payable {
    return bool(saleStarted)
}

function owner() payable {
    return owner
}

function cancelled() payable {
    return bool(cancelled)
}

function totalWhiteListed() payable {
    return totalWhiteListed
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function MIM() payable {
    return MIMAddress
}

function whiteListEnabled() payable {
    return bool(whiteListEnabled)
}

function boughtLOVE(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function whiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function disableWhiteList() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor6.field_16) = 0
}

function renounceManagement() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function cancel() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor6.field_24) = 1
    saleStarted = 0
    Mask(248, 0, stor6.field_8) = 0
}

function manipulateSale(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleStarted = uint8(arg1)
    return bool(saleStarted)
}

function manipulateWL(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor6.field_16) = Mask(240, 0, arg1)
    return bool(whiteListEnabled)
}

function manipulateClaim(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor6.field_8) = Mask(248, 0, arg1)
    return bool(uint8(stor6.field_8))
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor1);
    owner = stor1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor1 = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if ADMINAddress != msg.sender:
        revert with 0, 'Restricted area, only admin!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args ADMINAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function whiteListBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if saleStarted:
        revert with 0, 'Already started'
    if totalWhiteListed + arg1.length < totalWhiteListed:
        revert with 0, 'SafeMath: addition overflow'
    totalWhiteListed += arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function claim() payable {
    if not uint8(stor6.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4e6f7420636c61696d61626c65207965742e20506c656173652074727920616761696e206c61746572,
                    mem[206 len 22]
    if not stor7[address(msg.sender)]:
        revert with 0, 'Not an earlier investor, sorry.'
    if stor9[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e43757272656e742077616c6c657420616c726561647920636c61696d65642c20736f727279,
                    mem[202 len 26]
    stor9[address(msg.sender)] = 1
    require ext_code.size(LOVEAddress)
    staticcall LOVEAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(LOVEAddress)
    call LOVEAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 5 * 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function purchaseLOVE() payable {
    if bool(saleStarted) != 1:
        revert with 0, 'Sale not happening, IDO closed.'
    if not whiteListEnabled:
        revert with 0, 'Not whitelisted'
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 'Not whitelisted'
    if stor7[address(msg.sender)]:
        revert with 0, 'Already participated'
    stor7[address(msg.sender)] = 1
    if not whiteListEnabled:
        require ext_code.size(MIMAddress)
        staticcall MIMAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.size(MIMAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 5 * 10^uint8(ext_call.return_data[0])) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call MIMAddress with:
             gas gas_remaining wei
            args Mask(224, 32, 5 * 10^uint8(ext_call.return_data[0])) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 5 * 10^uint8(ext_call.return_data[0])
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if 1 > totalWhiteListed:
            revert with 0, 'SafeMath: subtraction overflow'
        totalWhiteListed--
        require ext_code.size(MIMAddress)
        staticcall MIMAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.size(MIMAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 5 * 10^uint8(ext_call.return_data[0])) >> 32
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call MIMAddress with:
             gas gas_remaining wei
            args Mask(224, 32, 5 * 10^uint8(ext_call.return_data[0])) << 480, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[388]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 467 len 22]
    return 1
}



}
