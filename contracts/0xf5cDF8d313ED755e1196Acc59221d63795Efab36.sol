contract main {




// =====================  Runtime code  =====================


address owner;
address TREASURYAddress;
address BASEAddress;
address TOKENAddress;
uint256 sub_15626c7e;
uint256 sub_9d17910f;
uint256 maxCap;
uint256 sub_385e0de0;
uint256 totalSold;
uint8 presaleActive;
uint8 sub_3f2981cf; offset 8
uint8 claimActive; offset 16
uint8 sub_cb0269bc; offset 24
uint256 stor9; offset 24
uint256 stor9; offset 16
uint256 stor9; offset 8
uint256 whitelistSize;
mapping of uint8 stor11;
mapping of uint256 contributed;
mapping of uint8 stor13;
mapping of uint8 stor14;

function sub_15626c7e(?) payable {
    return sub_15626c7e
}

function maxCap() payable {
    return maxCap
}

function TREASURY() payable {
    return TREASURYAddress
}

function sub_385e0de0(?) payable {
    return sub_385e0de0
}

function sub_3f2981cf(?) payable {
    return bool(sub_3f2981cf)
}

function presaleActive() payable {
    return bool(presaleActive)
}

function TOKEN() payable {
    return TOKENAddress
}

function owner() payable {
    return owner
}

function totalSold() payable {
    return totalSold
}

function contributed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributed[arg1]
}

function sub_9d17910f(?) payable {
    return sub_9d17910f
}

function refunded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function sub_cb0269bc(?) payable {
    return bool(sub_cb0269bc)
}

function claimActive() payable {
    return bool(claimActive)
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function BASE() payable {
    return BASEAddress
}

function whitelistSize() payable {
    return whitelistSize
}

function kill() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(TREASURYAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_85947df1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_385e0de0 = arg1
}

function changeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    TOKENAddress = arg1
}

function togglePresale(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleActive = uint8(arg1)
}

function sub_a74c8345(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    BASEAddress = address(arg1)
}

function sub_0e21f59f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor9.field_8) = Mask(248, 0, bool(arg1))
}

function sub_18868455(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor9.field_16) = Mask(240, 0, bool(arg1))
}

function sub_205bcec8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor9.field_24) = Mask(232, 0, bool(arg1))
}

function changeMaxCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0xb877aa3236a4b44909befeb9fad487c2ff8df0157db98d374f:
        revert with 0, 17
    maxCap = 10^17 * arg1
}

function sub_18b9ccd2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    sub_15626c7e = 10^9 * arg1
}

function sub_6652c855(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    sub_9d17910f = 10^9 * arg1
}

function sub_23d7e5b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if contributed[address(arg1)] > sub_9d17910f:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_9d17910f < contributed[address(arg1)]:
        revert with 0, 17
    return (sub_9d17910f - contributed[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addToWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if whitelistSize > !arg1.length:
        revert with 0, 17
    whitelistSize += arg1.length
}

function removeFromWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if whitelistSize < arg1.length:
        revert with 0, 17
    whitelistSize -= arg1.length
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
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
            args TREASURYAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claim() payable {
    if not claimActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CLAIM: Claiming is not active yet.'
    if stor13[msg.sender]:
        revert with 0, 'CLAIM: Already claimed.'
    if contributed[msg.sender] < sub_15626c7e:
        revert with 0, 'CLAIM: -_- invalid claim'
    if contributed[msg.sender] > sub_9d17910f:
        revert with 0, 'CLAIM: *_* invalid claim'
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < contributed[msg.sender]:
        revert with 0, 'CLAIM: Please contact dev.'
    if not sub_385e0de0:
        revert with 0, 'SafeMath: division by zero', 0
    stor13[msg.sender] = 1
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, contributed[msg.sender] / sub_385e0de0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function refund() payable {
    if not sub_cb0269bc:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'REFUND: Refunding is not active yet.'
    if stor14[msg.sender]:
        revert with 0, 'REFUND: Already refunded.'
    if contributed[msg.sender] < sub_15626c7e:
        revert with 0, 'REFUND: -_- invalid claim'
    if contributed[msg.sender] > sub_9d17910f:
        revert with 0, 'REFUND: *_* invalid claim'
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < contributed[msg.sender]:
        revert with 0, 'REFUND: Please contact dev.'
    if not sub_385e0de0:
        revert with 0, 'SafeMath: division by zero', 0
    stor14[msg.sender] = 1
    require ext_code.size(BASEAddress)
    call BASEAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, contributed[msg.sender] / sub_385e0de0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(BASEAddress)
    staticcall BASEAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(BASEAddress)
        call BASEAddress.0xa9059cbb with:
             gas gas_remaining wei
            args TREASURYAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(TOKENAddress)
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(TOKENAddress)
        staticcall TOKENAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(TOKENAddress)
        call TOKENAddress.0xa9059cbb with:
             gas gas_remaining wei
            args TREASURYAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address):
        call TREASURYAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function contribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if not presaleActive:
            if not sub_3f2981cf:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CONTRIBUTE: Sale is not active yet.'
        if arg1 < sub_15626c7e:
            revert with 0, 'CONTRIBUTE: Contribution too low'
        if 0 > !contributed[msg.sender]:
            revert with 0, 17
        if contributed[msg.sender] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if contributed[msg.sender] > sub_9d17910f:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CONTRIBUTE: Contribution too high'
        if 0 > !totalSold:
            revert with 0, 17
        if totalSold < 0:
            revert with 0, 'SafeMath: addition overflow'
        if totalSold > maxCap:
            revert with 0, 'CONTRIBUTE: Hard cap reached.'
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'CONTRIBUTE: $WAVAX balance is too low.'
        if presaleActive:
            if not sub_3f2981cf:
                if not stor11[msg.sender]:
                    revert with 0, 'CONTRIBUTE: Not whitelisted.'
        if contributed[msg.sender] > -1:
            revert with 0, 17
        if totalSold > -1:
            revert with 0, 17
        require ext_code.size(BASEAddress)
        call BASEAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, 0
    else:
        if arg1 and sub_385e0de0 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * sub_385e0de0 / arg1 != sub_385e0de0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not presaleActive:
            if not sub_3f2981cf:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CONTRIBUTE: Sale is not active yet.'
        if arg1 < sub_15626c7e:
            revert with 0, 'CONTRIBUTE: Contribution too low'
        if arg1 * sub_385e0de0 > !contributed[msg.sender]:
            revert with 0, 17
        if (arg1 * sub_385e0de0) + contributed[msg.sender] < arg1 * sub_385e0de0:
            revert with 0, 'SafeMath: addition overflow'
        if (arg1 * sub_385e0de0) + contributed[msg.sender] > sub_9d17910f:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CONTRIBUTE: Contribution too high'
        if arg1 * sub_385e0de0 > !totalSold:
            revert with 0, 17
        if (arg1 * sub_385e0de0) + totalSold < arg1 * sub_385e0de0:
            revert with 0, 'SafeMath: addition overflow'
        if (arg1 * sub_385e0de0) + totalSold > maxCap:
            revert with 0, 'CONTRIBUTE: Hard cap reached.'
        require ext_code.size(BASEAddress)
        staticcall BASEAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1 * sub_385e0de0:
            revert with 0, 'CONTRIBUTE: $WAVAX balance is too low.'
        if presaleActive:
            if not sub_3f2981cf:
                if not stor11[msg.sender]:
                    revert with 0, 'CONTRIBUTE: Not whitelisted.'
        if contributed[msg.sender] > !(arg1 * sub_385e0de0):
            revert with 0, 17
        contributed[msg.sender] += arg1 * sub_385e0de0
        if totalSold > !(arg1 * sub_385e0de0):
            revert with 0, 17
        totalSold += arg1 * sub_385e0de0
        require ext_code.size(BASEAddress)
        call BASEAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1 * sub_385e0de0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
