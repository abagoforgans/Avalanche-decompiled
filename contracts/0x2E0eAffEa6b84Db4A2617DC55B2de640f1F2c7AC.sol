contract main {




// =====================  Runtime code  =====================


#
#  - ZapOut(address arg1, address arg2, uint256 arg3, uint256 arg4, address[] arg5, bytes[] arg6, address arg7)
#  - ZapOutWithPermit(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5, address[] arg6, bytes[] arg7, address arg8)
#  - ZapOut2PairTokenWithPermit(address arg1, uint256 arg2, address arg3, bytes arg4)
#  - ZapOut2PairToken(address arg1, uint256 arg2, address arg3)
#  - _fallback()
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
uint256 goodwill;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 affiliateBalance;
mapping of uint256 totalAffiliateBalance;
mapping of uint8 stor7;

function affiliateBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return affiliateBalance[arg1][arg2]
}

function totalAffiliateBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalAffiliateBalance[arg1]
}

function affiliates(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function goodwill() {
    return goodwill
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function approvedTargets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function feeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function toggleContractActive() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not uint8(stor0.field_160))
}

function set_new_goodwill(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0, 'GoodWill Value not allowed'
    goodwill = arg1
}

function set_affiliate(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
}

function set_feeWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function set_new_affiliateSplit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Affiliate Split Value not allowed'
    stor3 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setApprovedTargets(address[] arg1, bool[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'Invalid Input length'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == bool(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        stor7[address(cd[((32 * idx) + arg1 + 36)])] = uint8(bool(cd[((32 * idx) + arg2 + 36)]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeLiquidityReturn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return arg2 * ext_call.return_data[0] / ext_call.return_data[0], 
           arg2 * ext_call.return_data[0] / ext_call.return_data[0],
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0])
}

function affilliateWithdraw(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        affiliateBalance[msg.sender][address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if totalAffiliateBalance[address(cd[((32 * idx) + arg1 + 36)])] < affiliateBalance[msg.sender][address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 17
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        totalAffiliateBalance[address(cd[((32 * idx) + arg1 + 36)])] -= affiliateBalance[msg.sender][address(cd[((32 * idx) + arg1 + 36)])]
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if address(cd[((32 * idx) + arg1 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if eth.balance(this.address) < affiliateBalance[msg.sender][address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 'Address: insufficient balance'
            call msg.sender with:
               value affiliateBalance[msg.sender][address(cd[((32 * idx) + arg1 + 36)])] wei
                 gas gas_remaining wei
            if return_data.size:
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_88] = return_data.size
                mem[_88 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _94 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = affiliateBalance[msg.sender][address(cd[((32 * idx) + arg1 + 36)])]
            _95 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_95 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_95 + 36 len 28]
            mem[64] = _94 + 164
            mem[_94 + 100] = 32
            mem[_94 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                revert with 0, 'Address: call to non-contract'
            _102 = mem[_95]
            s = 0
            while s < _102:
                mem[s + _94 + 164] = mem[s + _95 + 32]
                s = s + 32
                continue 
            if ceil32(_102) > _102:
                mem[_102 + _94 + 164] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[_94 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_94 + 168 len _102 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_94 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_94 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _94 + 232] = mem[idx + _94 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_94 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _94 + ceil32(return_data.size) + 165
                mem[_94 + 164] = return_data.size
                mem[_94 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_94 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_94 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _94 + ceil32(return_data.size) + 233] = mem[idx + _94 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_94 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_94 + 196] == bool(mem[_94 + 196])
                    if not mem[_94 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = affiliateBalance[msg.sender][address(cd[((32 * idx) + arg1 + 36)])]
        continue 
}

function withdrawTokens(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        if address(cd[((32 * idx) + arg1 + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if eth.balance(this.address) < totalAffiliateBalance[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 17
            if eth.balance(this.address) < eth.balance(this.address) - totalAffiliateBalance[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 'Address: insufficient balance'
            call owner with:
               value eth.balance(this.address) - totalAffiliateBalance[address(cd[((32 * idx) + arg1 + 36)])] wei
                 gas gas_remaining wei
            if return_data.size:
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_88] = return_data.size
                mem[_88 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_90]
            if mem[_90] < totalAffiliateBalance[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 17
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _96 = mem[64]
            mem[mem[64] + 36] = owner
            mem[mem[64] + 68] = _95 - totalAffiliateBalance[address(cd[((32 * idx) + arg1 + 36)])]
            _97 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_97 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_97 + 36 len 28]
            mem[64] = _96 + 164
            mem[_96 + 100] = 32
            mem[_96 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
                revert with 0, 'Address: call to non-contract'
            _104 = mem[_97]
            s = 0
            while s < _104:
                mem[s + _96 + 164] = mem[s + _97 + 32]
                s = s + 32
                continue 
            if ceil32(_104) > _104:
                mem[_104 + _96 + 164] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[_96 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_96 + 168 len _104 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_96 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_96 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _96 + 232] = mem[idx + _96 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_96 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _96 + ceil32(return_data.size) + 165
                mem[_96 + 164] = return_data.size
                mem[_96 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_96 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_96 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _96 + ceil32(return_data.size) + 233] = mem[idx + _96 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_96 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_96 + 196] == bool(mem[_96 + 196])
                    if not mem[_96 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
