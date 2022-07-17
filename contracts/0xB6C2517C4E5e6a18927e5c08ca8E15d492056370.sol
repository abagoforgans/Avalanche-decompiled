contract main {




// =====================  Runtime code  =====================


#
#  - sub_12926bc4(?)
#  - sub_1ce777ab(?)
#  - sub_2cce7256(?)
#  - sub_444c9d95(?)
#  - sub_a3ae179b(?)
#  - sub_bbaf3ec3(?)
#  - sub_f27dc754(?)
#
address owner;
uint256 stor1;
uint256 sub_9cd67b60;
uint256 sub_7e34cd3d;
uint256 sub_92cea185;
uint256 sub_542f9ea2;
uint256 sub_cdf6b84a;
uint256 seedAmount;
uint256 sub_a14d058e;
uint256 sub_3c8f30f8;
uint8 sub_134e50fa;
uint8 sub_3195b5f6; offset 8
uint8 sub_3aacec03; offset 16
uint8 sub_8f266b96; offset 24
mapping of uint256 sub_f902721b;
mapping of uint256 sub_e6ff10d8;
mapping of uint256 sub_4f527b2c;
mapping of uint256 sub_db325dc3;
mapping of uint256 sub_fe17b22b;
mapping of uint256 sub_9b3ac771;
mapping of uint256 sub_084666ba;
mapping of uint256 sub_83f79250;
array of address stor19;
array of address stor20;
array of address stor21;
array of address stor22;
address sub_282b814eAddress;
address stor24;
array of address stor53102357754523877234416998071563803995253030604342326300479139334353720243872;
array of uint256 stor65497776306449338822866456200886938200037812151248934372327580633283610556628;
array of uint256 stor107127823773121390700086038565182864263557655896535110321836330753391229997634;
array of uint256 stor115039331534621119546056428039510156132531426507152456181001785654473752256196;

function sub_084666ba(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_084666ba[arg1]
}

function sub_134e50fa(?) {
    return bool(sub_134e50fa)
}

function sub_282b814e(?) {
    return sub_282b814eAddress
}

function sub_3195b5f6(?) {
    return bool(sub_3195b5f6)
}

function sub_3aacec03(?) {
    return bool(sub_3aacec03)
}

function sub_3c8f30f8(?) {
    return sub_3c8f30f8
}

function sub_4f527b2c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4f527b2c[arg1]
}

function sub_542f9ea2(?) {
    return sub_542f9ea2
}

function sub_7e34cd3d(?) {
    return sub_7e34cd3d
}

function sub_83f79250(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_83f79250[arg1]
}

function owner() {
    return owner
}

function sub_8f266b96(?) {
    return bool(sub_8f266b96)
}

function sub_92cea185(?) {
    return sub_92cea185
}

function sub_9b3ac771(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9b3ac771[arg1]
}

function sub_9cd67b60(?) {
    return sub_9cd67b60
}

function sub_a14d058e(?) {
    return sub_a14d058e
}

function seedAmount() {
    return seedAmount
}

function sub_cdf6b84a(?) {
    return sub_cdf6b84a
}

function sub_db325dc3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_db325dc3[arg1]
}

function sub_e6ff10d8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e6ff10d8[arg1]
}

function sub_f902721b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f902721b[arg1]
}

function sub_fe17b22b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fe17b22b[arg1]
}

function _fallback() payable {
    revert
}

function sub_20586a67(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3195b5f6 = 1
}

function sub_28a9a746(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8f266b96 = 1
}

function sub_bf121dd9(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3aacec03 = 1
}

function sub_cacc0897(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_134e50fa = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
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

function getLatestPrice() {
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_07fc0f82(?) {
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (sub_9cd67b60 / ext_call.return_data[32])
}

function sub_3b3f342a(?) {
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (sub_542f9ea2 / ext_call.return_data[32])
}

function sub_ee1306ff(?) {
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (sub_92cea185 / ext_call.return_data[32])
}

function sub_fbcdf11d(?) {
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (sub_7e34cd3d / ext_call.return_data[32])
}

function sub_0d2f97a3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_cdf6b84a < arg2:
        revert with 0, 17
    sub_cdf6b84a -= arg2
    if sub_f902721b[address(arg1)] > !arg2:
        revert with 0, 17
    sub_f902721b[address(arg1)] += arg2
    if sub_fe17b22b[address(arg1)] > !arg2:
        revert with 0, 17
    sub_fe17b22b[address(arg1)] += arg2
    stor19.length++
    address(stor7566[stor19.length]) = address(arg1)
    return 1
}

function sub_38a9052b(?) payable {
    require 1 == bool(sub_134e50fa)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not msg.value:
        revert with 0, 'Investment required'
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    if not sub_9cd67b60 / ext_call.return_data[32]:
        revert with 0, 18
    if msg.value / sub_9cd67b60 / ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if 10^10 * msg.value / sub_9cd67b60 / ext_call.return_data[32] > sub_cdf6b84a:
        revert with 0, 'Not enough token'
    if sub_cdf6b84a < 10^10 * msg.value / sub_9cd67b60 / ext_call.return_data[32]:
        revert with 0, 17
    sub_cdf6b84a += -1 * 10^10 * msg.value / sub_9cd67b60 / ext_call.return_data[32]
    if sub_f902721b[msg.sender] > !(10^10 * msg.value / sub_9cd67b60 / ext_call.return_data[32]):
        revert with 0, 17
    sub_f902721b[msg.sender] += 10^10 * msg.value / sub_9cd67b60 / ext_call.return_data[32]
    if sub_fe17b22b[msg.sender] > !(10^10 * msg.value / sub_9cd67b60 / ext_call.return_data[32]):
        revert with 0, 17
    sub_fe17b22b[msg.sender] += 10^10 * msg.value / sub_9cd67b60 / ext_call.return_data[32]
    stor19.length++
    uint256(stor7566[stor19.length]) = msg.sender or Mask(96, 160, uint256(stor7566[stor19.length]))
    stor1 = 1
    return 1
}

function sub_919b96a2(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor21.length:
        if idx >= stor21.length:
            revert with 0, 50
        mem[32] = 13
        if sub_4f527b2c[stor21[idx]] < sub_084666ba[stor21[idx]] / 10:
            revert with 0, 17
        sub_4f527b2c[stor21[idx]] -= sub_084666ba[stor21[idx]] / 10
        if idx >= stor21.length:
            revert with 0, 50
        mem[0] = 21
        _80 = mem[64]
        mem[mem[64] + 36] = stor21[idx]
        mem[mem[64] + 68] = sub_084666ba[stor21[idx]] / 10
        _81 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_81 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_81 + 36 len 28]
        mem[64] = _80 + 164
        mem[_80 + 100] = 32
        mem[_80 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_282b814eAddress):
            revert with 0, 'Address: call to non-contract'
        _88 = mem[_81]
        s = 0
        while s < _88:
            mem[s + _80 + 164] = mem[s + _81 + 32]
            s = s + 32
            continue 
        if ceil32(_88) > _88:
            mem[_80 + _88 + 164] = 0
        call sub_282b814eAddress.mem[_80 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_80 + 168 len _88 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_80 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + 232] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _80 + ceil32(return_data.size) + 165
            mem[_80 + 164] = return_data.size
            mem[_80 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_80 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + ceil32(return_data.size) + 233] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_80 + 196] == bool(mem[_80 + 196])
                if not mem[_80 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_96216437(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor20.length:
        if idx >= stor20.length:
            revert with 0, 50
        mem[32] = 12
        if sub_e6ff10d8[stor20[idx]] < sub_9b3ac771[stor20[idx]] / 18:
            revert with 0, 17
        sub_e6ff10d8[stor20[idx]] -= sub_9b3ac771[stor20[idx]] / 18
        if idx >= stor20.length:
            revert with 0, 50
        mem[0] = 20
        _80 = mem[64]
        mem[mem[64] + 36] = stor20[idx]
        mem[mem[64] + 68] = sub_9b3ac771[stor20[idx]] / 18
        _81 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_81 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_81 + 36 len 28]
        mem[64] = _80 + 164
        mem[_80 + 100] = 32
        mem[_80 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_282b814eAddress):
            revert with 0, 'Address: call to non-contract'
        _88 = mem[_81]
        s = 0
        while s < _88:
            mem[s + _80 + 164] = mem[s + _81 + 32]
            s = s + 32
            continue 
        if ceil32(_88) > _88:
            mem[_80 + _88 + 164] = 0
        call sub_282b814eAddress.mem[_80 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_80 + 168 len _88 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_80 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + 232] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _80 + ceil32(return_data.size) + 165
            mem[_80 + 164] = return_data.size
            mem[_80 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_80 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + ceil32(return_data.size) + 233] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_80 + 196] == bool(mem[_80 + 196])
                if not mem[_80 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_a1274640(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor22.length:
        if idx >= stor22.length:
            revert with 0, 50
        mem[32] = 14
        if sub_db325dc3[stor22[idx]] < sub_83f79250[stor22[idx]] / 10:
            revert with 0, 17
        sub_db325dc3[stor22[idx]] -= sub_83f79250[stor22[idx]] / 10
        if idx >= stor22.length:
            revert with 0, 50
        mem[0] = 22
        _80 = mem[64]
        mem[mem[64] + 36] = stor22[idx]
        mem[mem[64] + 68] = sub_83f79250[stor22[idx]] / 10
        _81 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_81 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_81 + 36 len 28]
        mem[64] = _80 + 164
        mem[_80 + 100] = 32
        mem[_80 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_282b814eAddress):
            revert with 0, 'Address: call to non-contract'
        _88 = mem[_81]
        s = 0
        while s < _88:
            mem[s + _80 + 164] = mem[s + _81 + 32]
            s = s + 32
            continue 
        if ceil32(_88) > _88:
            mem[_80 + _88 + 164] = 0
        call sub_282b814eAddress.mem[_80 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_80 + 168 len _88 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_80 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + 232] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _80 + ceil32(return_data.size) + 165
            mem[_80 + 164] = return_data.size
            mem[_80 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_80 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + ceil32(return_data.size) + 233] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_80 + 196] == bool(mem[_80 + 196])
                if not mem[_80 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_dc925a8f(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor19.length:
        if idx >= stor19.length:
            revert with 0, 50
        mem[32] = 11
        if sub_f902721b[stor19[idx]] < sub_fe17b22b[stor19[idx]] / 18:
            revert with 0, 17
        sub_f902721b[stor19[idx]] -= sub_fe17b22b[stor19[idx]] / 18
        if idx >= stor19.length:
            revert with 0, 50
        mem[0] = 19
        _80 = mem[64]
        mem[mem[64] + 36] = stor19[idx]
        mem[mem[64] + 68] = sub_fe17b22b[stor19[idx]] / 18
        _81 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_81 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_81 + 36 len 28]
        mem[64] = _80 + 164
        mem[_80 + 100] = 32
        mem[_80 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_282b814eAddress):
            revert with 0, 'Address: call to non-contract'
        _88 = mem[_81]
        s = 0
        while s < _88:
            mem[s + _80 + 164] = mem[s + _81 + 32]
            s = s + 32
            continue 
        if ceil32(_88) > _88:
            mem[_80 + _88 + 164] = 0
        call sub_282b814eAddress.mem[_80 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_80 + 168 len _88 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_80 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + 232] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _80 + ceil32(return_data.size) + 165
            mem[_80 + 164] = return_data.size
            mem[_80 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_80 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_80 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _80 + ceil32(return_data.size) + 233] = mem[idx + _80 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_80 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_80 + 196] == bool(mem[_80 + 196])
                if not mem[_80 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_15660555(?) payable {
    require 1 == bool(sub_8f266b96)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not msg.value:
        revert with 0, 'Investment required'
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    if not sub_542f9ea2 / ext_call.return_data[32]:
        revert with 0, 18
    if msg.value / sub_542f9ea2 / ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if 10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32] > sub_3c8f30f8:
        revert with 0, 'Not enough token'
    if sub_3c8f30f8 < 10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32]:
        revert with 0, 17
    sub_3c8f30f8 += -1 * 10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32]
    if 10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if 10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32] < 10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100:
        revert with 0, 17
    if sub_db325dc3[msg.sender] > !((10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32]) - (10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100)):
        revert with 0, 17
    sub_db325dc3[msg.sender] = sub_db325dc3[msg.sender] + (10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32]) - (10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100)
    if 10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32] < 10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100:
        revert with 0, 17
    if sub_83f79250[msg.sender] > !((10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32]) - (10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100)):
        revert with 0, 17
    sub_83f79250[msg.sender] = sub_83f79250[msg.sender] + (10^10 * msg.value / sub_542f9ea2 / ext_call.return_data[32]) - (10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100)
    stor22.length++
    storECD8[stor22.length] = msg.sender or Mask(96, 160, storECD8[stor22.length])
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_282b814eAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_282b814eAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 10^11 * msg.value / sub_542f9ea2 / ext_call.return_data[32] / 100, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
    return 1
}

function sub_fda032fb(?) payable {
    require 1 == bool(sub_3aacec03)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not msg.value:
        revert with 0, 'Investment required'
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    if not sub_92cea185 / ext_call.return_data[32]:
        revert with 0, 18
    if msg.value / sub_92cea185 / ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] > sub_a14d058e:
        revert with 0, 'Not enough token'
    if sub_a14d058e < 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32]:
        revert with 0, 17
    sub_a14d058e += -1 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32]
    if 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] > 0x2492492492492492492492492492492492492492492492492492492492492492:
        revert with 0, 17
    if 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] < 7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100:
        revert with 0, 17
    if sub_4f527b2c[msg.sender] > !((10^10 * msg.value / sub_92cea185 / ext_call.return_data[32]) - (7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100)):
        revert with 0, 17
    sub_4f527b2c[msg.sender] = sub_4f527b2c[msg.sender] + (10^10 * msg.value / sub_92cea185 / ext_call.return_data[32]) - (7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100)
    if 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] < 7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100:
        revert with 0, 17
    if sub_084666ba[msg.sender] > !((10^10 * msg.value / sub_92cea185 / ext_call.return_data[32]) - (7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100)):
        revert with 0, 17
    sub_084666ba[msg.sender] = sub_084666ba[msg.sender] + (10^10 * msg.value / sub_92cea185 / ext_call.return_data[32]) - (7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100)
    stor21.length++
    storFE55[stor21.length] = msg.sender or Mask(96, 160, storFE55[stor21.length])
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_282b814eAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_282b814eAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 7 * 10^10 * msg.value / sub_92cea185 / ext_call.return_data[32] / 100, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
    return 1
}

function sub_fc0284f0(?) payable {
    require 1 == bool(sub_3195b5f6)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not msg.value:
        revert with 0, 'Investment required'
    require ext_code.size(stor24)
    staticcall stor24.latestRoundData() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    if not sub_7e34cd3d / ext_call.return_data[32]:
        revert with 0, 18
    if msg.value / sub_7e34cd3d / ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    if 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] > seedAmount:
        revert with 0, 'Not enough token'
    if seedAmount < 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32]:
        revert with 0, 17
    seedAmount += -1 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32]
    if 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d:
        revert with 0, 17
    if 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] < 25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000:
        revert with 0, 17
    if sub_e6ff10d8[msg.sender] > !((10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32]) - (25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000)):
        revert with 0, 17
    sub_e6ff10d8[msg.sender] = sub_e6ff10d8[msg.sender] + (10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32]) - (25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000)
    if 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] < 25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000:
        revert with 0, 17
    if sub_9b3ac771[msg.sender] > !((10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32]) - (25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000)):
        revert with 0, 17
    sub_9b3ac771[msg.sender] = sub_9b3ac771[msg.sender] + (10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32]) - (25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000)
    stor20.length++
    stor90CE[stor20.length] = msg.sender or Mask(96, 160, stor90CE[stor20.length])
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = 25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_282b814eAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000, 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_282b814eAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 25 * 10^10 * msg.value / sub_7e34cd3d / ext_call.return_data[32] / 1000, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
    return 1
}



}
