contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(uint256 arg1)
#  - sub_90450149(?)
#
address owner;
uint256 depositId;
array of struct allDepositIds;
array of struct stor3;
mapping of struct lockedToken;
mapping of uint256 tokenBalanceBy;
uint256 bnbFee;
uint256 sub_3372790b;
uint256 sub_ae3ff3dd;
uint256 sub_213596b8;

function sub_213596b8(?) {
    return sub_213596b8
}

function sub_3372790b(?) {
    return sub_3372790b
}

function getTokenBalanceByAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function getDepositDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           lockedToken[arg1].field_1024,
           lockedToken[arg1].field_1280,
           bool(lockedToken[arg1].field_1536)
}

function owner() {
    return owner
}

function depositId() {
    return depositId
}

function sub_ae3ff3dd(?) {
    return sub_ae3ff3dd
}

function walletTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           lockedToken[arg1].field_1024,
           lockedToken[arg1].field_1280,
           bool(lockedToken[arg1].field_1536),
           lockedToken[arg1].field_1544
}

function allDepositIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function bnbFee() {
    return bnbFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setBnbFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bnbFee = arg1
}

function sub_63c34977(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'BPADVault: Small discount'
    if arg1 >= 99:
        revert with 0, 'BPADVault: Large discount'
    sub_3372790b = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getTotalTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_213596b8:
        sub_213596b8 = 0
        call arg1 with:
           value sub_213596b8 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getAllDepositIds() {
    if allDepositIds.length:
        mem[128] = uint256(allDepositIds.field_0)
        idx = 128
        s = 0
        while (32 * allDepositIds.length) + 96 > idx:
            mem[idx + 32] = allDepositIds[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=allDepositIds.length, data=mem[128 len 32 * allDepositIds.length])
    mem[(32 * allDepositIds.length) + 128] = 32
    mem[(32 * allDepositIds.length) + 160] = allDepositIds.length
    mem[(32 * allDepositIds.length) + 192 len 32 * allDepositIds.length] = mem[128 len 32 * allDepositIds.length]
    return memory
      from (32 * allDepositIds.length) + 128
       len (96 * allDepositIds.length) + 64
}

function getDepositsByWithdrawalAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)].field_0:
        mem[128] = stor3[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor3[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor3[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3[address(arg1)].field_0, data=mem[128 len 32 * stor3[address(arg1)].field_0])
    mem[(32 * stor3[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor3[address(arg1)].field_0) + 160] = stor3[address(arg1)].field_0
    mem[(32 * stor3[address(arg1)].field_0) + 192 len 32 * stor3[address(arg1)].field_0] = mem[128 len 32 * stor3[address(arg1)].field_0]
    return memory
      from (32 * stor3[address(arg1)].field_0) + 128
       len (96 * stor3[address(arg1)].field_0) + 64
}

function sub_9e998687(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 128 > test266151307() or (32 * ('cd', 68).length) + 128 < 96:
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = 128
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 > test266151307() or (32 * ('cd', 100).length) + 160 < 128:
        revert with 0, 65
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    idx = 0
    t = (32 * ('cd', 68).length) + 160
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[132] == uint128(cd[132])
    if ('cd', 68).length <= 1:
        revert with 0, 'BPADVault: Multiple lock only'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'BPADVault: amounts and unlockTimes length should be same'
    if not address(cd[36]):
        revert with 0, 'BPADVault: WithdrawalAddress is Zero Address'
    if ('cd', 68).length and bnbFee > -1 / ('cd', 68).length:
        revert with 0, 17
    if ('cd', 68).length * bnbFee and sub_3372790b > -1 / ('cd', 68).length * bnbFee:
        revert with 0, 17
    if ('cd', 68).length and bnbFee > -1 / ('cd', 68).length:
        revert with 0, 17
    if ('cd', 68).length * bnbFee < ('cd', 68).length * bnbFee * sub_3372790b / 100:
        revert with 0, 17
    if msg.value < (('cd', 68).length * bnbFee) - (('cd', 68).length * bnbFee * sub_3372790b / 100):
        revert with 0, 'BPADVault: Fees missing'
    if sub_ae3ff3dd > !msg.value:
        revert with 0, 17
    sub_ae3ff3dd += msg.value
    if sub_213596b8 > !msg.value:
        revert with 0, 17
    sub_213596b8 += msg.value
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'BPADVault: Amount is zero'
        if idx >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] >= 10^10:
            revert with 0, 'BPADVault: Unrealistic unlockTime'
        if idx >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= block.timestamp:
            revert with 0, 'BPADVault: Past unlockTime'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if tokenBalanceBy[address(cd[4])][address(cd[36])] > !mem[(32 * idx) + 128]:
            revert with 0, 17
        tokenBalanceBy[address(cd[4])][address(cd[36])] += mem[(32 * idx) + 128]
        if depositId == -1:
            revert with 0, 17
        depositId++
        lockedToken[stor1 + 1].field_0 = address(cd[4])
        lockedToken[stor1 + 1].field_256 = address(cd[36])
        lockedToken[stor1 + 1].field_512 = msg.sender or Mask(96, 160, lockedToken[stor1 + 1].field_512)
        if idx >= mem[96]:
            revert with 'NH{q', 50
        lockedToken[stor1 + 1].field_768 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        lockedToken[stor1 + 1].field_1024 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
        lockedToken[stor1 + 1].field_1280 = block.timestamp
        lockedToken[stor1 + 1].field_1536 = 0
        lockedToken[stor1 + 1].field_1544 = uint128(cd[132])
        allDepositIds.length++
        allDepositIds[allDepositIds.length].field_0 = depositId + 1
        mem[0] = depositId + 1
        mem[32] = sha3(address(cd[36]), 3) + 1
        if stor3[address(cd[36])][1][stor1 + 1].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _851 = mem[(32 * idx) + 128]
            _853 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _851
            _855 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_855 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_855 + 36 len 28]
            mem[64] = _853 + 196
            mem[_853 + 132] = 32
            mem[_853 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            _869 = mem[_855]
            s = 0
            while s < _869:
                mem[s + _853 + 196] = mem[s + _855 + 32]
                s = s + 32
                continue 
            if ceil32(_869) <= _869:
                call address(cd[4]).mem[_853 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_853 + 200 len _869 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_853 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_853 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _853 + 264] = mem[idx + _853 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_853 + 264]
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1189 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + 196] = mem[(32 * idx) + 128]
                        mem[_853 + 228] = _1189
                        mem[_853 + 260] = depositId
                        emit 0x9ffeafd5: mem[_853 + 196], _1189, depositId, address(cd[4]), msg.sender
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1253 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + 196] = mem[(32 * idx) + 128]
                        mem[_853 + 228] = _1253
                        mem[_853 + 260] = depositId
                        emit 0x9ffeafd5: mem[_853 + 196], _1253, depositId, address(cd[4]), msg.sender
                else:
                    mem[64] = _853 + ceil32(return_data.size) + 197
                    mem[_853 + 196] = return_data.size
                    mem[_853 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_853 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_853 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _853 + ceil32(return_data.size) + 265] = mem[idx + _853 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_853 + ceil32(return_data.size) + 265]
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1192 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_853 + ceil32(return_data.size) + 229] = _1192
                        mem[_853 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_853 + ceil32(return_data.size) + 197], _1192, depositId, address(cd[4]), msg.sender
                    else:
                        require return_data.size >= 32
                        require mem[_853 + 228] == bool(mem[_853 + 228])
                        if not mem[_853 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1255 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_853 + ceil32(return_data.size) + 229] = _1255
                        mem[_853 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_853 + ceil32(return_data.size) + 197], _1255, depositId, address(cd[4]), msg.sender
            else:
                mem[_869 + _853 + 196] = 0
                call address(cd[4]).mem[_853 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_853 + 200 len _869 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_853 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_853 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _853 + 264] = mem[idx + _853 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_853 + 264]
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1195 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + 196] = mem[(32 * idx) + 128]
                        mem[_853 + 228] = _1195
                        mem[_853 + 260] = depositId
                        emit 0x9ffeafd5: mem[_853 + 196], _1195, depositId, address(cd[4]), msg.sender
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1257 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + 196] = mem[(32 * idx) + 128]
                        mem[_853 + 228] = _1257
                        mem[_853 + 260] = depositId
                        emit 0x9ffeafd5: mem[_853 + 196], _1257, depositId, address(cd[4]), msg.sender
                else:
                    mem[64] = _853 + ceil32(return_data.size) + 197
                    mem[_853 + 196] = return_data.size
                    mem[_853 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_853 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_853 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _853 + ceil32(return_data.size) + 265] = mem[idx + _853 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_853 + ceil32(return_data.size) + 265]
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1198 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_853 + ceil32(return_data.size) + 229] = _1198
                        mem[_853 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_853 + ceil32(return_data.size) + 197], _1198, depositId, address(cd[4]), msg.sender
                    else:
                        require return_data.size >= 32
                        require mem[_853 + 228] == bool(mem[_853 + 228])
                        if not mem[_853 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1259 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_853 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_853 + ceil32(return_data.size) + 229] = _1259
                        mem[_853 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_853 + ceil32(return_data.size) + 197], _1259, depositId, address(cd[4]), msg.sender
        else:
            stor3[address(cd[36])].field_0++
            stor3[address(cd[36])][stor3[address(cd[36])].field_0].field_0 = depositId + 1
            mem[0] = depositId + 1
            mem[32] = sha3(address(cd[36]), 3) + 1
            stor3[address(cd[36])][1][stor1 + 1].field_0 = stor3[address(cd[36])].field_0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _852 = mem[(32 * idx) + 128]
            _854 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _852
            _857 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_857 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_857 + 36 len 28]
            mem[64] = _854 + 196
            mem[_854 + 132] = 32
            mem[_854 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            _870 = mem[_857]
            s = 0
            while s < _870:
                mem[s + _854 + 196] = mem[s + _857 + 32]
                s = s + 32
                continue 
            if ceil32(_870) <= _870:
                call address(cd[4]).mem[_854 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_854 + 200 len _870 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_854 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_854 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _854 + 264] = mem[idx + _854 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_854 + 264]
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1201 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + 196] = mem[(32 * idx) + 128]
                        mem[_854 + 228] = _1201
                        mem[_854 + 260] = depositId
                        emit 0x9ffeafd5: mem[_854 + 196], _1201, depositId, address(cd[4]), msg.sender
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1261 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + 196] = mem[(32 * idx) + 128]
                        mem[_854 + 228] = _1261
                        mem[_854 + 260] = depositId
                        emit 0x9ffeafd5: mem[_854 + 196], _1261, depositId, address(cd[4]), msg.sender
                else:
                    mem[64] = _854 + ceil32(return_data.size) + 197
                    mem[_854 + 196] = return_data.size
                    mem[_854 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_854 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_854 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _854 + ceil32(return_data.size) + 265] = mem[idx + _854 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_854 + ceil32(return_data.size) + 265]
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1204 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_854 + ceil32(return_data.size) + 229] = _1204
                        mem[_854 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_854 + ceil32(return_data.size) + 197], _1204, depositId, address(cd[4]), msg.sender
                    else:
                        require return_data.size >= 32
                        require mem[_854 + 228] == bool(mem[_854 + 228])
                        if not mem[_854 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1263 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_854 + ceil32(return_data.size) + 229] = _1263
                        mem[_854 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_854 + ceil32(return_data.size) + 197], _1263, depositId, address(cd[4]), msg.sender
            else:
                mem[_870 + _854 + 196] = 0
                call address(cd[4]).mem[_854 + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[_854 + 200 len _870 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_854 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_854 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _854 + 264] = mem[idx + _854 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_854 + 264]
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1207 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + 196] = mem[(32 * idx) + 128]
                        mem[_854 + 228] = _1207
                        mem[_854 + 260] = depositId
                        emit 0x9ffeafd5: mem[_854 + 196], _1207, depositId, address(cd[4]), msg.sender
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1265 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + 196] = mem[(32 * idx) + 128]
                        mem[_854 + 228] = _1265
                        mem[_854 + 260] = depositId
                        emit 0x9ffeafd5: mem[_854 + 196], _1265, depositId, address(cd[4]), msg.sender
                else:
                    mem[64] = _854 + ceil32(return_data.size) + 197
                    mem[_854 + 196] = return_data.size
                    mem[_854 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_854 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_854 + ceil32(return_data.size) + 201] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _854 + ceil32(return_data.size) + 265] = mem[idx + _854 + 164]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_854 + ceil32(return_data.size) + 265]
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1210 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_854 + ceil32(return_data.size) + 229] = _1210
                        mem[_854 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_854 + ceil32(return_data.size) + 197], _1210, depositId, address(cd[4]), msg.sender
                    else:
                        require return_data.size >= 32
                        require mem[_854 + 228] == bool(mem[_854 + 228])
                        if not mem[_854 + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        _1267 = mem[(32 * idx) + (32 * ('cd', 68).length) + 160]
                        mem[_854 + ceil32(return_data.size) + 197] = mem[(32 * idx) + 128]
                        mem[_854 + ceil32(return_data.size) + 229] = _1267
                        mem[_854 + ceil32(return_data.size) + 261] = depositId
                        emit 0x9ffeafd5: mem[_854 + ceil32(return_data.size) + 197], _1267, depositId, address(cd[4]), msg.sender
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = depositId + 1
        continue 
    return s
}



}
