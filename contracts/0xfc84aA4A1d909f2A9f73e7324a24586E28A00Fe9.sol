contract main {




// =====================  Runtime code  =====================


const MAX_PRESALE_PER_ACCOUNT = 4 * 10^11

const PRICE = 5 * 10^9

const MAX_SOLD = 2 * 10^14

const MIN_PRESALE_PER_ACCOUNT = 2 * 10^11


address owner;
address devAddress;
address stor2;
uint256 sold;
uint8 stor4; offset 160
uint8 stor4; offset 168
address sub_54bdb4ceAddress;
mapping of uint256 invested;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;

function sold() payable {
    return sold
}

function approvedBuyers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_54bdb4ce(?) payable {
    return sub_54bdb4ceAddress
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    return invested[arg1]
}

function canClaim() payable {
    return bool(uint8(stor4.field_160))
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function privateSale() payable {
    return bool(uint8(stor4.field_168))
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function blacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function activatePrivateSale() payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    uint8(stor4.field_168) = 1
}

function deactivatePrivateSale() payable {
    if devAddress != msg.sender:
        revert with 0, '!dev'
    uint8(stor4.field_168) = 0
}

function setSold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    sold = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor7[address(arg1)] = 1
    return 1
}

function setClaimingActive(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    sub_54bdb4ceAddress = arg1
    uint8(stor4.field_160) = 1
}

function deapproveBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor7[address(arg1)] = 0
    return 0
}

function blacklistBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor8[address(arg1)] = 1
    return 1
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(arg1)]:
        return -invested[address(arg1)]
    if not uint8(stor4.field_168):
        return -invested[address(arg1)]
    return (-invested[address(arg1)] + 4 * 10^11)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
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
        args devAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_9cb08b15(?) payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not uint8(stor4.field_160):
        revert with 0, 'cannot claim yet'
    if stor6[msg.sender]:
        revert with 0, 'already claimed'
    if stor8[msg.sender]:
        revert with 0, 'blacklisted'
    if invested[msg.sender]:
        require ext_code.size(sub_54bdb4ceAddress)
        call sub_54bdb4ceAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, invested[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    stor6[msg.sender] = 1
}

function approveBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while arg1.length > idx:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'lOwnable: caller is not the owne'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        stor7[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
    return arg1.length
}

function blacklistBuyers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while arg1.length > idx:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'lOwnable: caller is not the owne'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
    return arg1.length
}

function sub_7a2068d3(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if 2 * 10^14 <= sold:
        revert with 0, 'sold out'
    if arg1 + sold >= 2 * 10^14:
        revert with 0, 'not enough remaining'
    if not stor7[address(msg.sender)]:
        if arg1 > -invested[address(msg.sender)]:
            revert with 0, 'amount exceeds buyable amount'
        if arg1 + invested[msg.sender] < 2 * 10^11:
            revert with 0, 'amount is not sufficient'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stor2):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 5 * 10^9 * arg1) >> 32
        mem[416 len 4] = 0
    else:
        if not uint8(stor4.field_168):
            if arg1 > -invested[address(msg.sender)]:
                revert with 0, 'amount exceeds buyable amount'
            if arg1 + invested[msg.sender] < 2 * 10^11:
                revert with 0, 'amount is not sufficient'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(stor2):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 5 * 10^9 * arg1) >> 32
            mem[416 len 4] = 0
        else:
            if arg1 > -invested[address(msg.sender)] + 4 * 10^11:
                revert with 0, 'amount exceeds buyable amount'
            if arg1 + invested[msg.sender] < 2 * 10^11:
                revert with 0, 'amount is not sufficient'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(stor2):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 5 * 10^9 * arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
    call stor2 with:
         gas gas_remaining wei
        args Mask(224, 32, 5 * 10^9 * arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 5 * 10^9 * arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    invested[msg.sender] += arg1
    sold += arg1
}



}
