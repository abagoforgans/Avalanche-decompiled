contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct sub_9f89a4b2;
mapping of uint8 stor3;
mapping of struct sub_8299b40c;
mapping of address sub_ac8e68cf;
mapping of uint256 sub_483140d5;
uint256 beneficiaryCount;
uint256 vestingPeriod;
uint256 sub_0b433a12;
address tokenAddress;

function sub_0b433a12(?) payable {
    return sub_0b433a12
}

function sub_483140d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_483140d5[arg1]
}

function vestingPeriod() payable {
    return vestingPeriod
}

function beneficiaryCount() payable {
    return beneficiaryCount
}

function sub_8299b40c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8299b40c[arg1].field_0, sub_8299b40c[arg1].field_256, sub_8299b40c[arg1].field_512
}

function owner() payable {
    return owner
}

function sub_98c032b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function isBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_8299b40c[address(arg1)].field_256)
}

function sub_9f89a4b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9f89a4b2.length
    return sub_9f89a4b2[arg1].field_0
}

function sub_ac8e68cf(?) payable {
    require calldata.size - 4 >= 32
    return sub_ac8e68cf[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setClaimInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'onlyAdmin'
    sub_0b433a12 = arg1
    emit 0xdb5d9c1e: msg.sender, arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'onlyAdmin'
    tokenAddress = arg1
    emit SetToken(msg.sender, arg1);
}

function setVestingPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'onlyAdmin'
    if arg1 >= vestingPeriod:
        revert with 0, 'CANNOT_INCREASE_PERIOD'
    vestingPeriod = arg1
    emit 0x70a524e6: msg.sender, arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_f73c814b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor3[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'onlyAdmin'
    uint256(stor1[address(arg1)]) = not uint8(stor1[address(arg1)]) or Mask(248, 8, uint256(stor1[address(arg1)]))
    emit 0x74fde275: msg.sender, address(arg1), bool(uint8(not uint8(stor1[address(arg1)])))
}

function depositAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_8299b40c[msg.sender].field_256:
        revert with 0, 'DEPOSIT_EXISTS'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_8299b40c[address(msg.sender)].field_0 = 0
    sub_8299b40c[address(msg.sender)].field_256 = arg1
    sub_8299b40c[address(msg.sender)].field_512 = block.timestamp
    if beneficiaryCount == -1:
        revert with 0, 17
    beneficiaryCount++
    sub_ac8e68cf[stor7] = msg.sender
    emit 0xebe6f9eb: msg.sender, arg1
}

function releaseVesting(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'onlyAdmin'
    if not sub_8299b40c[address(arg1)].field_256:
        revert with 0, 'USER_NOT_BENEFICIARY'
    if sub_8299b40c[address(arg1)].field_256 < sub_483140d5[address(arg1)]:
        revert with 0, 17
    if sub_8299b40c[address(arg1)].field_256 - sub_483140d5[address(arg1)]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), sub_8299b40c[address(arg1)].field_256 - sub_483140d5[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_483140d5[address(arg1)] = sub_8299b40c[address(arg1)].field_256
    emit 0xf6cc4148: msg.sender, arg1, sub_8299b40c[address(arg1)].field_256 - sub_483140d5[address(arg1)]
}

function getAdmins() payable {
    mem[64] = (32 * sub_9f89a4b2.length) + 128
    mem[96] = sub_9f89a4b2.length
    if not sub_9f89a4b2.length:
        mem[(32 * sub_9f89a4b2.length) + 128] = 32
        mem[(32 * sub_9f89a4b2.length) + 160] = sub_9f89a4b2.length
        idx = 0
        s = (32 * sub_9f89a4b2.length) + 192
        t = 128
        while idx < sub_9f89a4b2.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_9f89a4b2.length) + 128
           len (96 * sub_9f89a4b2.length) + 64
    mem[128] = address(sub_9f89a4b2.field_0)
    idx = 128
    s = 0
    while (32 * sub_9f89a4b2.length) + 96 > idx:
        mem[idx + 32] = sub_9f89a4b2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_9f89a4b2.length) + 128] = 32
    mem[(32 * sub_9f89a4b2.length) + 160] = sub_9f89a4b2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_9f89a4b2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_9f89a4b2.length) + -mem[64] + 192
}

function sub_c4ba652f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_8299b40c[address(arg1)].field_512 > !vestingPeriod:
        revert with 0, 17
    if block.timestamp >= sub_8299b40c[address(arg1)].field_512 + vestingPeriod:
        if sub_0b433a12 and vestingPeriod > -1 / sub_0b433a12:
            revert with 0, 17
        if sub_0b433a12 * vestingPeriod > !sub_8299b40c[address(arg1)].field_512:
            revert with 0, 17
        if (sub_0b433a12 * vestingPeriod) + sub_8299b40c[address(arg1)].field_512 > !sub_0b433a12:
            revert with 0, 17
        if (sub_0b433a12 * vestingPeriod) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 < block.timestamp:
            revert with 0, 17
        if block.timestamp <= (sub_0b433a12 * vestingPeriod) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 - block.timestamp:
            return 0
        if (sub_0b433a12 * vestingPeriod) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 < block.timestamp:
            revert with 0, 17
        return ((sub_0b433a12 * vestingPeriod) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 - block.timestamp)
    if block.timestamp < sub_8299b40c[address(arg1)].field_512:
        revert with 0, 17
    if not sub_0b433a12:
        revert with 0, 18
    if sub_0b433a12 and block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 > -1 / sub_0b433a12:
        revert with 0, 17
    if sub_0b433a12 * block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 > !sub_8299b40c[address(arg1)].field_512:
        revert with 0, 17
    if (sub_0b433a12 * block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12) + sub_8299b40c[address(arg1)].field_512 > !sub_0b433a12:
        revert with 0, 17
    if (sub_0b433a12 * block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 < block.timestamp:
        revert with 0, 17
    if block.timestamp <= (sub_0b433a12 * block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 - block.timestamp:
        return 0
    if (sub_0b433a12 * block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 < block.timestamp:
        revert with 0, 17
    return ((sub_0b433a12 * block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12) + sub_8299b40c[address(arg1)].field_512 + sub_0b433a12 - block.timestamp)
}

function sub_4da1d3b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_8299b40c[address(arg1)].field_256:
        revert with 0, 'USER_NOT_BENEFICIARY'
    if sub_8299b40c[address(arg1)].field_512 > !vestingPeriod:
        revert with 0, 17
    if block.timestamp >= sub_8299b40c[address(arg1)].field_512 + vestingPeriod:
        if 0 == sub_8299b40c[address(arg1)].field_0:
            if sub_8299b40c[address(arg1)].field_512 + vestingPeriod < sub_8299b40c[address(arg1)].field_512:
                revert with 0, 17
            if not sub_0b433a12:
                revert with 0, 18
            if vestingPeriod / sub_0b433a12 and sub_0b433a12 > -1 / vestingPeriod / sub_0b433a12:
                revert with 0, 17
            if vestingPeriod / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / vestingPeriod / sub_0b433a12 * sub_0b433a12:
                revert with 0, 17
            if not vestingPeriod:
                revert with 0, 18
            return (vestingPeriod / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod)
        if sub_8299b40c[address(arg1)].field_512 + vestingPeriod < sub_8299b40c[address(arg1)].field_0:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 18
        if sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 and sub_0b433a12 > -1 / sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12:
            revert with 0, 17
        if sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12:
            revert with 0, 17
        if not vestingPeriod:
            revert with 0, 18
        return (sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod)
    if 0 == sub_8299b40c[address(arg1)].field_0:
        if block.timestamp < sub_8299b40c[address(arg1)].field_512:
            revert with 0, 17
        if not sub_0b433a12:
            revert with 0, 18
        if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12:
            revert with 0, 17
        if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12:
            revert with 0, 17
        if not vestingPeriod:
            revert with 0, 18
        return (block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod)
    if block.timestamp < sub_8299b40c[address(arg1)].field_0:
        revert with 0, 17
    if not sub_0b433a12:
        revert with 0, 18
    if block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12:
        revert with 0, 17
    if block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12:
        revert with 0, 17
    if not vestingPeriod:
        revert with 0, 18
    return (block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod)
}

function sub_accc1d5e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if 1 == bool(stor3[msg.sender]):
        idx = 0
        while idx < sub_9f89a4b2.length:
            mem[0] = sub_9f89a4b2[idx].field_0
            mem[32] = 3
            stor3[stor2[idx].field_0] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            stor3[mem[(32 * idx) + 140 len 20]] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_9f89a4b2.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_9f89a4b2.length > idx:
                sub_9f89a4b2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                sub_9f89a4b2[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_9f89a4b2.length > idx:
                sub_9f89a4b2[idx].field_0 = 0
                idx = idx + 1
                continue 
        mem[ceil32(32 * ('cd', 4).length) + 97] = 32
        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'onlyAdmin'
        idx = 0
        while idx < sub_9f89a4b2.length:
            mem[0] = sub_9f89a4b2[idx].field_0
            mem[32] = 3
            stor3[stor2[idx].field_0] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            stor3[mem[(32 * idx) + 140 len 20]] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        sub_9f89a4b2.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while sub_9f89a4b2.length > idx:
                sub_9f89a4b2[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[ceil32(32 * ('cd', 4).length) + 97] = 32
            mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < mem[96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            s = 0
            idx = 128
            while (32 * ('cd', 4).length) + 128 > idx:
                sub_9f89a4b2[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while sub_9f89a4b2.length > idx:
                sub_9f89a4b2[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[ceil32(32 * ('cd', 4).length) + 97] = 32
            mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < ('cd', 4).length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    emit SetAdmins(mem[mem[64] len ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161]);
}

function deposit() payable {
    if sub_8299b40c[msg.sender].field_256:
        revert with 0, 'DEPOSIT_EXISTS'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 2775 * 10^14 * 24 * 3600:
        revert with 0, 'BALANCE_TOO_LOW'
    if ext_call.return_data[0] > 19999 * 10^18:
        if ext_call.return_data[0] > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, 90 * ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_8299b40c[address(msg.sender)].field_0 = 0
        sub_8299b40c[address(msg.sender)].field_256 = 90 * ext_call.return_data[0] / 100
        sub_8299b40c[address(msg.sender)].field_512 = block.timestamp
        if beneficiaryCount == -1:
            revert with 0, 17
        beneficiaryCount++
        sub_ac8e68cf[stor7] = msg.sender
        emit Deposit(msg.sender, 90 * ext_call.return_data[0] / 100);
    else:
        if ext_call.return_data[0] > 27775 * 10^14 * 3600:
            if ext_call.return_data[0] > 0x333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, 80 * ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            sub_8299b40c[address(msg.sender)].field_0 = 0
            sub_8299b40c[address(msg.sender)].field_256 = 80 * ext_call.return_data[0] / 100
            sub_8299b40c[address(msg.sender)].field_512 = block.timestamp
            if beneficiaryCount == -1:
                revert with 0, 17
            beneficiaryCount++
            sub_ac8e68cf[stor7] = msg.sender
            emit Deposit(msg.sender, 80 * ext_call.return_data[0] / 100);
        else:
            if ext_call.return_data[0] > 4999 * 10^18:
                if ext_call.return_data[0] > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                    revert with 0, 17
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, 75 * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                sub_8299b40c[address(msg.sender)].field_0 = 0
                sub_8299b40c[address(msg.sender)].field_256 = 75 * ext_call.return_data[0] / 100
                sub_8299b40c[address(msg.sender)].field_512 = block.timestamp
                if beneficiaryCount == -1:
                    revert with 0, 17
                beneficiaryCount++
                sub_ac8e68cf[stor7] = msg.sender
                emit Deposit(msg.sender, 75 * ext_call.return_data[0] / 100);
            else:
                if ext_call.return_data[0] > 1999 * 10^18:
                    if ext_call.return_data[0] > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                        revert with 0, 17
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, 50 * ext_call.return_data[0] / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_8299b40c[address(msg.sender)].field_0 = 0
                    sub_8299b40c[address(msg.sender)].field_256 = 50 * ext_call.return_data[0] / 100
                    sub_8299b40c[address(msg.sender)].field_512 = block.timestamp
                    if beneficiaryCount == -1:
                        revert with 0, 17
                    beneficiaryCount++
                    sub_ac8e68cf[stor7] = msg.sender
                    emit Deposit(msg.sender, 50 * ext_call.return_data[0] / 100);
                else:
                    if ext_call.return_data[0] <= 2775 * 10^14 * 24 * 3600:
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_8299b40c[address(msg.sender)].field_0 = 0
                        sub_8299b40c[address(msg.sender)].field_256 = ext_call.return_data[0]
                        sub_8299b40c[address(msg.sender)].field_512 = block.timestamp
                        if beneficiaryCount == -1:
                            revert with 0, 17
                        beneficiaryCount++
                        sub_ac8e68cf[stor7] = msg.sender
                        emit Deposit(msg.sender, ext_call.return_data[0]);
                    else:
                        if ext_call.return_data[0] > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d:
                            revert with 0, 17
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, 25 * ext_call.return_data[0] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_8299b40c[address(msg.sender)].field_0 = 0
                        sub_8299b40c[address(msg.sender)].field_256 = 25 * ext_call.return_data[0] / 100
                        sub_8299b40c[address(msg.sender)].field_512 = block.timestamp
                        if beneficiaryCount == -1:
                            revert with 0, 17
                        beneficiaryCount++
                        sub_ac8e68cf[stor7] = msg.sender
                        emit Deposit(msg.sender, 25 * ext_call.return_data[0] / 100);
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != msg.sender:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'NOT_APPROVED'
    if not sub_8299b40c[address(arg1)].field_256:
        revert with 0, 'USER_NOT_BENEFICIARY'
    if sub_8299b40c[address(arg1)].field_512 > !vestingPeriod:
        revert with 0, 17
    if block.timestamp >= sub_8299b40c[address(arg1)].field_512 + vestingPeriod:
        if not sub_8299b40c[address(arg1)].field_0:
            if sub_8299b40c[address(arg1)].field_512 + vestingPeriod < sub_8299b40c[address(arg1)].field_512:
                revert with 0, 17
            if not sub_0b433a12:
                revert with 0, 18
            if vestingPeriod / sub_0b433a12 and sub_0b433a12 > -1 / vestingPeriod / sub_0b433a12:
                revert with 0, 17
            if vestingPeriod / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / vestingPeriod / sub_0b433a12 * sub_0b433a12:
                revert with 0, 17
            if not vestingPeriod:
                revert with 0, 18
            if vestingPeriod / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod <= 0:
                revert with 0, 'NO_BALANCE_ACCRUED'
            if sub_8299b40c[address(arg1)].field_512 > !vestingPeriod:
                revert with 0, 17
            if block.timestamp >= sub_8299b40c[address(arg1)].field_512 + vestingPeriod:
                if vestingPeriod and sub_0b433a12 > -1 / vestingPeriod:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(vestingPeriod * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (vestingPeriod * sub_0b433a12)
            else:
                if block.timestamp < sub_8299b40c[address(arg1)].field_512:
                    revert with 0, 17
                if not sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), vestingPeriod / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_483140d5[address(arg1)] > !(vestingPeriod / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod):
                revert with 0, 17
            sub_483140d5[address(arg1)] += vestingPeriod / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            emit Claim(msg.sender, arg1, vestingPeriod / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod);
        else:
            if sub_8299b40c[address(arg1)].field_512 + vestingPeriod < sub_8299b40c[address(arg1)].field_0:
                revert with 0, 17
            if not sub_0b433a12:
                revert with 0, 18
            if sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 and sub_0b433a12 > -1 / sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12:
                revert with 0, 17
            if sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12:
                revert with 0, 17
            if not vestingPeriod:
                revert with 0, 18
            if sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod <= 0:
                revert with 0, 'NO_BALANCE_ACCRUED'
            if sub_8299b40c[address(arg1)].field_512 > !vestingPeriod:
                revert with 0, 17
            if block.timestamp >= sub_8299b40c[address(arg1)].field_512 + vestingPeriod:
                if vestingPeriod and sub_0b433a12 > -1 / vestingPeriod:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(vestingPeriod * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (vestingPeriod * sub_0b433a12)
            else:
                if block.timestamp < sub_8299b40c[address(arg1)].field_512:
                    revert with 0, 17
                if not sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_483140d5[address(arg1)] > !(sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod):
                revert with 0, 17
            sub_483140d5[address(arg1)] += sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            emit Claim(msg.sender, arg1, sub_8299b40c[address(arg1)].field_512 + vestingPeriod - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod);
    else:
        if not sub_8299b40c[address(arg1)].field_0:
            if block.timestamp < sub_8299b40c[address(arg1)].field_512:
                revert with 0, 17
            if not sub_0b433a12:
                revert with 0, 18
            if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12:
                revert with 0, 17
            if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12:
                revert with 0, 17
            if not vestingPeriod:
                revert with 0, 18
            if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod <= 0:
                revert with 0, 'NO_BALANCE_ACCRUED'
            if sub_8299b40c[address(arg1)].field_512 > !vestingPeriod:
                revert with 0, 17
            if block.timestamp >= sub_8299b40c[address(arg1)].field_512 + vestingPeriod:
                if vestingPeriod and sub_0b433a12 > -1 / vestingPeriod:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(vestingPeriod * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (vestingPeriod * sub_0b433a12)
            else:
                if block.timestamp < sub_8299b40c[address(arg1)].field_512:
                    revert with 0, 17
                if not sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_483140d5[address(arg1)] > !(block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod):
                revert with 0, 17
            sub_483140d5[address(arg1)] += block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            emit Claim(msg.sender, arg1, block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod);
        else:
            if block.timestamp < sub_8299b40c[address(arg1)].field_0:
                revert with 0, 17
            if not sub_0b433a12:
                revert with 0, 18
            if block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12:
                revert with 0, 17
            if block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 and sub_8299b40c[address(arg1)].field_256 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12:
                revert with 0, 17
            if not vestingPeriod:
                revert with 0, 18
            if block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod <= 0:
                revert with 0, 'NO_BALANCE_ACCRUED'
            if sub_8299b40c[address(arg1)].field_512 > !vestingPeriod:
                revert with 0, 17
            if block.timestamp >= sub_8299b40c[address(arg1)].field_512 + vestingPeriod:
                if vestingPeriod and sub_0b433a12 > -1 / vestingPeriod:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(vestingPeriod * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (vestingPeriod * sub_0b433a12)
            else:
                if block.timestamp < sub_8299b40c[address(arg1)].field_512:
                    revert with 0, 17
                if not sub_0b433a12:
                    revert with 0, 18
                if block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 and sub_0b433a12 > -1 / block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12:
                    revert with 0, 17
                if sub_8299b40c[address(arg1)].field_512 > !(block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12):
                    revert with 0, 17
                sub_8299b40c[address(arg1)].field_0 = sub_8299b40c[address(arg1)].field_512 + (block.timestamp - sub_8299b40c[address(arg1)].field_512 / sub_0b433a12 * sub_0b433a12)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_483140d5[address(arg1)] > !(block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod):
                revert with 0, 17
            sub_483140d5[address(arg1)] += block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod
            emit Claim(msg.sender, arg1, block.timestamp - sub_8299b40c[address(arg1)].field_0 / sub_0b433a12 * sub_0b433a12 * sub_8299b40c[address(arg1)].field_256 / vestingPeriod);
}



}
