contract main {




// =====================  Runtime code  =====================


const MAX_ALPHA = 10


uint8 stor0; offset 160
address owner;
uint256 stor1;
uint256 sub_8e3d691b;
address sub_cdadcc7bAddress;
address eggAddress;
address greaseAddress;
address stor6;
mapping of struct sub_0ab22e5d;
mapping of uint8 stor8;
mapping of uint256 sub_2244cf8f;
mapping of uint256 sub_87079351;
mapping of struct sub_c0ab3d72;
array of struct pack;
mapping of uint256 packIndices;
mapping of uint256 sub_7e4cc12d;
mapping of uint256 sub_5c8204d7;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint256 sub_ecdfa7fb;
uint256 sub_eafe9e5e;
uint256 MINIMUM_TO_EXIT;
uint256 sub_258d9bce;
uint256 sub_258fc4eb;
uint256 sub_48f225d5;
uint256 sub_5324a9de;
uint256 lastClaimTimestamp;
uint256 stakeStartTime;
uint8 rescueEnabled;

function sub_0ab22e5d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_0ab22e5d[arg1].field_0), 
           uint256(sub_0ab22e5d[arg1].field_256),
           uint256(sub_0ab22e5d[arg1].field_512),
           uint256(sub_0ab22e5d[arg1].field_768)
}

function sub_2244cf8f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2244cf8f[arg1]
}

function sub_258d9bce(?) payable {
    return sub_258d9bce
}

function sub_258fc4eb(?) payable {
    return sub_258fc4eb
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function sub_48f225d5(?) payable {
    return sub_48f225d5
}

function sub_5324a9de(?) payable {
    return sub_5324a9de
}

function sub_5c8204d7(?) payable {
    require calldata.size - 4 >= 32
    return sub_5c8204d7[arg1]
}

function paused() payable {
    return bool(stor0)
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function totalAlphaStaked() payable {
    return totalAlphaStaked
}

function grease() payable {
    return greaseAddress
}

function stakeStartTime() payable {
    return stakeStartTime
}

function sub_7e4cc12d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7e4cc12d[arg1]
}

function sub_87079351(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_87079351[arg1]
}

function owner() payable {
    return owner
}

function sub_8e3d691b(?) payable {
    return sub_8e3d691b
}

function sub_bd911f0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function egg() payable {
    return eggAddress
}

function sub_c0ab3d72(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_c0ab3d72[arg1].field_0), uint256(sub_c0ab3d72[arg1].field_256), address(sub_c0ab3d72[arg1].field_512)
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function sub_cdadcc7b(?) payable {
    return sub_cdadcc7bAddress
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(pack[arg1].field_0)
    return uint256(pack[arg1][arg2].field_0), uint256(pack[arg1][arg2].field_256), address(pack[arg1][arg2].field_512)
}

function sub_eafe9e5e(?) payable {
    return sub_eafe9e5e
}

function sub_ecdfa7fb(?) payable {
    return sub_ecdfa7fb
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

function sub_0c215cc0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_258d9bce = arg1
}

function sub_4524b659(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e3d691b = arg1
}

function sub_b450afae(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eafe9e5e = arg1
}

function sub_dbfae0d7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg1
}

function setStakeStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stakeStartTime = arg1
}

function setRandomizer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function sub_9caf93a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    eggAddress = address(arg1)
}

function sub_b11d451c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    greaseAddress = address(arg1)
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function sub_f0903e78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cdadcc7bAddress = address(arg1)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_06b8ae45(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor8[address(arg1)]:
        return uint256(sub_0ab22e5d[address(arg1)].field_0), 
               uint256(sub_0ab22e5d[address(arg1)].field_256),
               uint256(sub_0ab22e5d[address(arg1)].field_512),
               uint256(sub_0ab22e5d[address(arg1)].field_768)
    return 0, 0, 10, 3
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_0796895d(?) payable {
    require calldata.size - 4 >= 32
    staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_6b7d2470(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0x42842e0e with:
         gas gas_remaining wei
        args this.address, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
    else:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
}

function sub_d91dd408(?) payable {
    require calldata.size - 4 >= 32
    if 1 > !(sub_5c8204d7[arg1] / 20000):
        revert with 0, 17
    if (sub_5c8204d7[arg1] / 20000) + 1 > -1000000000000000001:
        revert with 0, 17
    if (sub_5c8204d7[arg1] / 20000) + 1000000000000000001 < 1:
        revert with 0, 17
    if (sub_5c8204d7[arg1] / 20000) + 10^18 / 10^18 and 10^18 > -1 / (sub_5c8204d7[arg1] / 20000) + 10^18 / 10^18:
        revert with 0, 17
    return (10^18 * (sub_5c8204d7[arg1] / 20000) + 10^18 / 10^18)
}

function reclaimERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_46d4e1e6(?) payable {
    require calldata.size - 4 >= 32
    if totalAlphaStaked != 0:
        if not totalAlphaStaked:
            revert with 0, 18
        idx = 1
        s = 0
        while idx <= 10:
            mem[0] = idx
            mem[32] = 12
            if uint256(pack[idx].field_0) and idx > -1 / uint256(pack[idx].field_0):
                revert with 0, 17
            if s > !(uint256(pack[idx].field_0) * idx):
                revert with 0, 17
            if arg1 % totalAlphaStaked >= s + (uint256(pack[idx].field_0) * idx):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(pack[idx].field_0) * idx)
                continue 
            if not uint256(pack[idx].field_0):
                revert with 0, 18
            if Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0) >= uint256(pack[idx].field_0):
                revert with 0, 50
            return address(pack[idx][Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0)].field_512)
        return 0
    else:
        return 0
}

function sub_e537c711(?) payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor8[msg.sender]:
        uint256(sub_0ab22e5d[msg.sender].field_0) = 0
        uint256(sub_0ab22e5d[msg.sender].field_256) = 0
        uint256(sub_0ab22e5d[msg.sender].field_512) = 10
        uint256(sub_0ab22e5d[msg.sender].field_768) = 3
        stor8[msg.sender] = 1
    if uint256(sub_0ab22e5d[msg.sender].field_0) == -1:
        revert with 0, 17
    if uint256(sub_0ab22e5d[msg.sender].field_0) > 0x147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147:
        revert with 0, 17
    if 200 > !(200 * uint256(sub_0ab22e5d[msg.sender].field_0)):
        revert with 0, 17
    if (200 * uint256(sub_0ab22e5d[msg.sender].field_0)) + 200 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(eggAddress)
    call eggAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, (200 * 10^18 * uint256(sub_0ab22e5d[msg.sender].field_0)) + 200 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 > !uint256(sub_0ab22e5d[msg.sender].field_0):
        revert with 0, 17
    uint256(sub_0ab22e5d[msg.sender].field_0)++
    if 3 > !uint256(sub_0ab22e5d[msg.sender].field_512):
        revert with 0, 17
    uint256(sub_0ab22e5d[msg.sender].field_512) += 3
    stor1 = 1
}

function sub_4d36f4b3(?) payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor8[msg.sender]:
        uint256(sub_0ab22e5d[msg.sender].field_0) = 0
        uint256(sub_0ab22e5d[msg.sender].field_256) = 0
        uint256(sub_0ab22e5d[msg.sender].field_512) = 10
        uint256(sub_0ab22e5d[msg.sender].field_768) = 3
        stor8[msg.sender] = 1
    if uint256(sub_0ab22e5d[msg.sender].field_0) == -1:
        revert with 0, 17
    if uint256(sub_0ab22e5d[msg.sender].field_0) > 0x147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147ae147:
        revert with 0, 17
    if 200 > !(200 * uint256(sub_0ab22e5d[msg.sender].field_0)):
        revert with 0, 17
    if (200 * uint256(sub_0ab22e5d[msg.sender].field_0)) + 200 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(eggAddress)
    call eggAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, (200 * 10^18 * uint256(sub_0ab22e5d[msg.sender].field_0)) + 200 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 > !uint256(sub_0ab22e5d[msg.sender].field_256):
        revert with 0, 17
    uint256(sub_0ab22e5d[msg.sender].field_256)++
    if 1 > !uint256(sub_0ab22e5d[msg.sender].field_768):
        revert with 0, 17
    uint256(sub_0ab22e5d[msg.sender].field_768)++
    stor1 = 1
}

function sub_66ef53cb(?) payable {
    require calldata.size - 4 >= 32
    staticcall sub_cdadcc7bAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Token is not staked.'
    staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if block.timestamp < uint256(sub_c0ab3d72[arg1].field_256):
            revert with 0, 17
        if block.timestamp - uint256(sub_c0ab3d72[arg1].field_256) and sub_eafe9e5e > -1 / block.timestamp - uint256(sub_c0ab3d72[arg1].field_256):
            revert with 0, 17
        return ((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[arg1].field_256) * sub_eafe9e5e) / 24 * 3600)
    staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 11 < ext_call.return_data[32]:
        revert with 0, 17
    if packIndices[arg1] >= uint256(pack[-ext_call.return_data[32] + 11].field_0):
        revert with 0, 50
    if sub_ecdfa7fb < uint256(pack[-ext_call.return_data[32] + 11][stor13[arg1]].field_256):
        revert with 0, 17
    if -ext_call.return_data[32] + 11 and sub_8e3d691b > -1 / -ext_call.return_data[32] + 11:
        revert with 0, 17
    if (11 * sub_8e3d691b) - (ext_call.return_data[32] * sub_8e3d691b) / 1000 and sub_ecdfa7fb - uint256(pack[-ext_call.return_data[32] + 11][stor13[arg1]].field_256) > -1 / (11 * sub_8e3d691b) - (ext_call.return_data[32] * sub_8e3d691b) / 1000:
        revert with 0, 17
    return ((sub_ecdfa7fb * (11 * sub_8e3d691b) - (ext_call.return_data[32] * sub_8e3d691b) / 1000) - (uint256(pack[-ext_call.return_data[32] + 11][stor13[arg1]].field_256) * (11 * sub_8e3d691b) - (ext_call.return_data[32] * sub_8e3d691b) / 1000))
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not rescueEnabled:
        revert with 0, 'RESCUE DISABLED'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[64] = 288
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    idx = 0
    s = 96
    s = 0
    while idx < arg1.length:
        staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_61] == bool(mem[_61])
        if not mem[_61]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 11
            _65 = mem[64]
            mem[64] = mem[64] + 96
            mem[_65] = uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_65 + 32] = uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_256)
            mem[_65 + 64] = address(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_512)
            if address(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_512) != msg.sender:
                revert with 0, 'msg.sender is not stake.owner 1'
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_cdadcc7bAddress)
            call sub_cdadcc7bAddress.0xb88d4fde with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_256) = 0
            address(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_512) = 0
            mem[0] = msg.sender
            mem[32] = 9
            if sub_2244cf8f[msg.sender] < 1:
                revert with 0, 17
            sub_2244cf8f[msg.sender]--
            if sub_48f225d5 < 1:
                revert with 0, 17
            sub_48f225d5--
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 1
            emit 0xe19b8b68: 0, 1, cd[((32 * idx) + arg1 + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _65
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_70] == bool(mem[_70])
        _76 = mem[_70 + 32]
        mem[0] = mem[_70 + 32]
        _77 = sha3(mem[0], 12)
        mem[32] = 13
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 12)
        _80 = mem[64]
        mem[64] = mem[64] + 96
        mem[_80] = uint256(stor[sha3(_77) + (3 * stor13[cd[((32 * idx) + arg1 + 36)]])])
        mem[_80 + 32] = uint256(stor[sha3(_77) + (3 * stor13[cd[((32 * idx) + arg1 + 36)]]) + 1])
        mem[_80 + 64] = address(stor[sha3(_77) + (3 * stor13[cd[((32 * idx) + arg1 + 36)]]) + 2])
        if address(stor[sha3(_77) + (3 * stor13[cd[((32 * idx) + arg1 + 36)]]) + 2]) != msg.sender:
            revert with 0, 'msg.sender is not stake.owner 2'
        if totalAlphaStaked < _76:
            revert with 0, 17
        totalAlphaStaked -= _76
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(sub_cdadcc7bAddress)
        call sub_cdadcc7bAddress.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 12
        if uint256(pack[_76].field_0) < 1:
            revert with 0, 17
        if uint256(pack[_76].field_0) - 1 >= uint256(pack[_76].field_0):
            revert with 0, 50
        mem[0] = sha3(_76, 12)
        _89 = mem[64]
        mem[64] = mem[64] + 96
        mem[_89] = uint256(pack[_76][uint256(pack[_76].field_0)].field_0)
        mem[_89 + 32] = uint256(pack[_76][uint256(pack[_76].field_0)].field_0)
        mem[_89 + 64] = address(pack[_76][uint256(pack[_76].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[_76].field_0):
            revert with 0, 50
        uint256(pack[_76][stor13[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint256(pack[_76][uint256(pack[_76].field_0)].field_0)
        uint256(pack[_76][stor13[cd[((32 * idx) + arg1 + 36)]]].field_256) = uint256(pack[_76][uint256(pack[_76].field_0)].field_0)
        address(pack[_76][stor13[cd[((32 * idx) + arg1 + 36)]]].field_512) = address(pack[_76][uint256(pack[_76].field_0)].field_0)
        packIndices[uint256(stor12[_76][uint256(stor12[_76].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[_76].field_0):
            revert with 0, 49
        uint256(pack[_76][uint256(pack[_76].field_0)].field_0) = 0
        uint256(pack[_76][uint256(pack[_76].field_0)].field_0) = 0
        address(pack[_76][uint256(pack[_76].field_0)].field_0) = 0
        uint256(pack[_76].field_0)--
        packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
        mem[0] = msg.sender
        mem[32] = 10
        if sub_87079351[msg.sender] < 1:
            revert with 0, 17
        sub_87079351[msg.sender]--
        if sub_5324a9de < 1:
            revert with 0, 17
        sub_5324a9de--
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 1
        emit 0xb2e9ca63: 0, 1, cd[((32 * idx) + arg1 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _80
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
    stor1 = 1
}

function stake(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp <= stakeStartTime:
        revert with 0, 'not live'
    if arg1.length >= 11:
        revert with 0, 'max 10 per transaction'
    mem[0] = msg.sender
    mem[32] = 8
    if stor8[msg.sender]:
        idx = 0
        s = 0
        while idx < arg1.length:
            staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_127] == bool(mem[_127])
            if mem[_127]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if sub_2244cf8f[msg.sender] > !s:
            revert with 0, 17
        if sub_2244cf8f[msg.sender] + s > uint256(sub_0ab22e5d[msg.sender].field_512):
            revert with 0, 'TheFryingPan: max staked limit reached. Please upgrade staking level.'
        mem[0] = msg.sender
        mem[32] = 10
        if sub_87079351[msg.sender] > -1:
            revert with 0, 17
        if sub_87079351[msg.sender] > uint256(sub_0ab22e5d[msg.sender].field_768):
            revert with 0, 'TheFryingPan: max staked limit reached. Please upgrade staking level.'
        idx = 0
        while idx < arg1.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
            staticcall sub_cdadcc7bAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_221] == mem[_221 + 12 len 20]
            if mem[_221 + 12 len 20] != msg.sender:
                revert with 0, 'msg.sender not owner of tokenID'
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(sub_cdadcc7bAddress)
            call sub_cdadcc7bAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_237] == bool(mem[_237])
            if not mem[_237]:
                if block.timestamp < lastClaimTimestamp:
                    revert with 0, 17
                if block.timestamp - lastClaimTimestamp and sub_48f225d5 > -1 / block.timestamp - lastClaimTimestamp:
                    revert with 0, 17
                if (block.timestamp * sub_48f225d5) - (lastClaimTimestamp * sub_48f225d5) and sub_eafe9e5e > -1 / (block.timestamp * sub_48f225d5) - (lastClaimTimestamp * sub_48f225d5):
                    revert with 0, 17
                if sub_258fc4eb > !((block.timestamp * sub_48f225d5 * sub_eafe9e5e) - (lastClaimTimestamp * sub_48f225d5 * sub_eafe9e5e) / 24 * 3600):
                    revert with 0, 17
                sub_258fc4eb += (block.timestamp * sub_48f225d5 * sub_eafe9e5e) - (lastClaimTimestamp * sub_48f225d5 * sub_eafe9e5e) / 24 * 3600
                lastClaimTimestamp = block.timestamp
                _261 = mem[64]
                mem[64] = mem[64] + 96
                mem[_261] = cd[((32 * idx) + arg1 + 36)]
                mem[_261 + 32] = block.timestamp
                mem[_261 + 64] = msg.sender
                uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_0) = cd[((32 * idx) + arg1 + 36)]
                uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_256) = block.timestamp
                address(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_512) = msg.sender
                if sub_48f225d5 > -2:
                    revert with 0, 17
                sub_48f225d5++
                mem[0] = msg.sender
                mem[32] = 9
                if sub_2244cf8f[msg.sender] > -2:
                    revert with 0, 17
                sub_2244cf8f[msg.sender]++
                mem[mem[64]] = block.timestamp
                emit TokenStaked(block.timestamp, msg.sender, cd[((32 * idx) + arg1 + 36)]);
            else:
                staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + arg1 + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_247] == bool(mem[_247])
                if totalAlphaStaked > !mem[_247 + 32]:
                    revert with 0, 17
                totalAlphaStaked += mem[_247 + 32]
                if sub_5324a9de > -2:
                    revert with 0, 17
                sub_5324a9de++
                mem[0] = mem[_247 + 32]
                _253 = sha3(mem[0], 12)
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                packIndices[cd[((32 * idx) + arg1 + 36)]] = uint256(stor[_253])
                mem[32] = 12
                _255 = mem[64]
                mem[64] = mem[64] + 96
                mem[_255] = cd[((32 * idx) + arg1 + 36)]
                mem[_255 + 32] = sub_ecdfa7fb
                mem[_255 + 64] = msg.sender
                uint256(stor[_253])++
                uint256(stor[sha3(_253) + (3 * uint256(stor[_253]))]) = cd[((32 * idx) + arg1 + 36)]
                uint256(stor[sha3(_253) + (3 * uint256(stor[_253])) + 1]) = sub_ecdfa7fb
                address(stor[sha3(_253) + (3 * uint256(stor[_253])) + 2]) = msg.sender
                mem[0] = msg.sender
                mem[32] = 10
                if sub_87079351[msg.sender] > -2:
                    revert with 0, 17
                sub_87079351[msg.sender]++
                mem[mem[64]] = sub_ecdfa7fb
                emit TokenStaked(sub_ecdfa7fb, msg.sender, cd[((32 * idx) + arg1 + 36)]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[64] = 224
        mem[96] = 0
        mem[128] = 0
        mem[160] = 10
        mem[192] = 3
        mem[0] = msg.sender
        uint256(sub_0ab22e5d[msg.sender].field_0) = 0
        uint256(sub_0ab22e5d[msg.sender].field_256) = 0
        uint256(sub_0ab22e5d[msg.sender].field_512) = 10
        uint256(sub_0ab22e5d[msg.sender].field_768) = 3
        mem[32] = 8
        stor8[msg.sender] = 1
        idx = 0
        s = 0
        while idx < arg1.length:
            staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_128] == bool(mem[_128])
            if mem[_128]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if sub_2244cf8f[msg.sender] > !s:
            revert with 0, 17
        if sub_2244cf8f[msg.sender] + s > uint256(sub_0ab22e5d[msg.sender].field_512):
            revert with 0, 'TheFryingPan: max staked limit reached. Please upgrade staking level.'
        mem[0] = msg.sender
        mem[32] = 10
        if sub_87079351[msg.sender] > -1:
            revert with 0, 17
        if sub_87079351[msg.sender] > uint256(sub_0ab22e5d[msg.sender].field_768):
            revert with 0, 'TheFryingPan: max staked limit reached. Please upgrade staking level.'
        idx = 0
        while idx < arg1.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
            staticcall sub_cdadcc7bAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_222] == mem[_222 + 12 len 20]
            if mem[_222 + 12 len 20] != msg.sender:
                revert with 0, 'msg.sender not owner of tokenID'
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(sub_cdadcc7bAddress)
            call sub_cdadcc7bAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_238] == bool(mem[_238])
            if not mem[_238]:
                if block.timestamp < lastClaimTimestamp:
                    revert with 0, 17
                if block.timestamp - lastClaimTimestamp and sub_48f225d5 > -1 / block.timestamp - lastClaimTimestamp:
                    revert with 0, 17
                if (block.timestamp * sub_48f225d5) - (lastClaimTimestamp * sub_48f225d5) and sub_eafe9e5e > -1 / (block.timestamp * sub_48f225d5) - (lastClaimTimestamp * sub_48f225d5):
                    revert with 0, 17
                if sub_258fc4eb > !((block.timestamp * sub_48f225d5 * sub_eafe9e5e) - (lastClaimTimestamp * sub_48f225d5 * sub_eafe9e5e) / 24 * 3600):
                    revert with 0, 17
                sub_258fc4eb += (block.timestamp * sub_48f225d5 * sub_eafe9e5e) - (lastClaimTimestamp * sub_48f225d5 * sub_eafe9e5e) / 24 * 3600
                lastClaimTimestamp = block.timestamp
                _274 = mem[64]
                mem[64] = mem[64] + 96
                mem[_274] = cd[((32 * idx) + arg1 + 36)]
                mem[_274 + 32] = block.timestamp
                mem[_274 + 64] = msg.sender
                uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_0) = cd[((32 * idx) + arg1 + 36)]
                uint256(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_256) = block.timestamp
                address(sub_c0ab3d72[cd[((32 * idx) + arg1 + 36)]].field_512) = msg.sender
                if sub_48f225d5 > -2:
                    revert with 0, 17
                sub_48f225d5++
                mem[0] = msg.sender
                mem[32] = 9
                if sub_2244cf8f[msg.sender] > -2:
                    revert with 0, 17
                sub_2244cf8f[msg.sender]++
                mem[mem[64]] = block.timestamp
                emit TokenStaked(block.timestamp, msg.sender, cd[((32 * idx) + arg1 + 36)]);
            else:
                staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + arg1 + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_248] == bool(mem[_248])
                if totalAlphaStaked > !mem[_248 + 32]:
                    revert with 0, 17
                totalAlphaStaked += mem[_248 + 32]
                if sub_5324a9de > -2:
                    revert with 0, 17
                sub_5324a9de++
                mem[0] = mem[_248 + 32]
                _266 = sha3(mem[0], 12)
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                packIndices[cd[((32 * idx) + arg1 + 36)]] = uint256(stor[_266])
                mem[32] = 12
                _268 = mem[64]
                mem[64] = mem[64] + 96
                mem[_268] = cd[((32 * idx) + arg1 + 36)]
                mem[_268 + 32] = sub_ecdfa7fb
                mem[_268 + 64] = msg.sender
                uint256(stor[_266])++
                uint256(stor[sha3(_266) + (3 * uint256(stor[_266]))]) = cd[((32 * idx) + arg1 + 36)]
                uint256(stor[sha3(_266) + (3 * uint256(stor[_266])) + 1]) = sub_ecdfa7fb
                address(stor[sha3(_266) + (3 * uint256(stor[_266])) + 2]) = msg.sender
                mem[0] = msg.sender
                mem[32] = 10
                if sub_87079351[msg.sender] > -2:
                    revert with 0, 17
                sub_87079351[msg.sender]++
                mem[mem[64]] = sub_ecdfa7fb
                emit TokenStaked(sub_ecdfa7fb, msg.sender, cd[((32 * idx) + arg1 + 36)]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor1 = 1
}

function sub_c50cda12(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if block.timestamp < lastClaimTimestamp:
        revert with 0, 17
    if block.timestamp - lastClaimTimestamp and sub_48f225d5 > -1 / block.timestamp - lastClaimTimestamp:
        revert with 0, 17
    if (block.timestamp * sub_48f225d5) - (lastClaimTimestamp * sub_48f225d5) and sub_eafe9e5e > -1 / (block.timestamp * sub_48f225d5) - (lastClaimTimestamp * sub_48f225d5):
        revert with 0, 17
    if sub_258fc4eb > !((block.timestamp * sub_48f225d5 * sub_eafe9e5e) - (lastClaimTimestamp * sub_48f225d5 * sub_eafe9e5e) / 24 * 3600):
        revert with 0, 17
    sub_258fc4eb += (block.timestamp * sub_48f225d5 * sub_eafe9e5e) - (lastClaimTimestamp * sub_48f225d5 * sub_eafe9e5e) / 24 * 3600
    lastClaimTimestamp = block.timestamp
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < ('cd', 4).length:
        staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_251] == bool(mem[_251])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[_251]:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 11
            _257 = mem[64]
            mem[64] = mem[64] + 96
            mem[_257] = uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0)
            mem[_257 + 32] = uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256)
            mem[_257 + 64] = address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512)
            if address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512) != msg.sender:
                revert with 0, 'msg.sender not stake.owner'
            if block.timestamp < uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256):
                revert with 0, 17
            if block.timestamp - uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) < MINIMUM_TO_EXIT:
                revert with 0, 'block.timestamp - stake.value < MINIMUM_TO_EXIT'
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            staticcall sub_cdadcc7bAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_266] == mem[_266 + 12 len 20]
            if mem[_266 + 12 len 20] != this.address:
                revert with 0, 'Token is not staked.'
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 11
            _276 = mem[64]
            mem[64] = mem[64] + 96
            mem[_276] = uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0)
            mem[_276 + 32] = uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256)
            mem[_276 + 64] = address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512)
            staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_282] == bool(mem[_282])
            if not mem[_282]:
                if block.timestamp < uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256):
                    revert with 0, 17
                if block.timestamp - uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) and sub_eafe9e5e > -1 / block.timestamp - uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256):
                    revert with 0, 17
                if not cd[36]:
                    if (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 and sub_258d9bce > -1 / (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600:
                        revert with 0, 17
                    if not totalAlphaStaked:
                        if unaccountedRewards > !((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 * sub_258d9bce / 100):
                            revert with 0, 17
                        unaccountedRewards += (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 * sub_258d9bce / 100
                        if 100 < sub_258d9bce:
                            revert with 0, 17
                        if (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 and -sub_258d9bce + 100 > -1 / (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600:
                            revert with 0, 17
                        _359 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_359] = cd[((32 * idx) + cd[4] + 36)]
                        mem[_359 + 32] = block.timestamp
                        mem[_359 + 64] = msg.sender
                    else:
                        if (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 * sub_258d9bce / 100 > !unaccountedRewards:
                            revert with 0, 17
                        if not totalAlphaStaked:
                            revert with 0, 18
                        if sub_ecdfa7fb > !(((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 * sub_258d9bce / 100) + unaccountedRewards / totalAlphaStaked):
                            revert with 0, 17
                        sub_ecdfa7fb += ((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 * sub_258d9bce / 100) + unaccountedRewards / totalAlphaStaked
                        unaccountedRewards = 0
                        if 100 < sub_258d9bce:
                            revert with 0, 17
                        if (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 and -sub_258d9bce + 100 > -1 / (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600:
                            revert with 0, 17
                        _381 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_381] = cd[((32 * idx) + cd[4] + 36)]
                        mem[_381 + 32] = block.timestamp
                        mem[_381 + 64] = msg.sender
                    uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0) = cd[((32 * idx) + cd[4] + 36)]
                    uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) = block.timestamp
                    address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512) = msg.sender
                    if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > !((100 * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) - (sub_258d9bce * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) / 100):
                        revert with 0, 17
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 15
                    sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] += (100 * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) - (sub_258d9bce * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) / 100
                    mem[mem[64]] = (100 * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) - (sub_258d9bce * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) / 100
                    mem[mem[64] + 32] = bool(cd[36])
                    emit 0xe19b8b68: (100 * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) - (sub_258d9bce * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) / 100, bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
                    if 0 > !((100 * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) - (sub_258d9bce * (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) / 100):
                        revert with 0, 17
                else:
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 100
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    staticcall stor6.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 100, cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_316] <= 50:
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(sub_cdadcc7bAddress)
                        call sub_cdadcc7bAddress.0xb88d4fde with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) = 0
                        address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512) = 0
                        if sub_2244cf8f[msg.sender] < 1:
                            revert with 0, 17
                        sub_2244cf8f[msg.sender]--
                        if sub_48f225d5 < 1:
                            revert with 0, 17
                        sub_48f225d5--
                        if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > !((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600):
                            revert with 0, 17
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] += (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600
                        mem[mem[64]] = (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600
                        mem[mem[64] + 32] = bool(cd[36])
                        emit 0xe19b8b68: (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600, bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
                        if 0 > !((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600):
                            revert with 0, 17
                    else:
                        if not totalAlphaStaked:
                            if unaccountedRewards > !((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600):
                                revert with 0, 17
                            unaccountedRewards += (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600
                        else:
                            if (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600 > !unaccountedRewards:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                revert with 0, 18
                            if sub_ecdfa7fb > !(((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                revert with 0, 17
                            sub_ecdfa7fb += ((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                            unaccountedRewards = 0
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(sub_cdadcc7bAddress)
                        call sub_cdadcc7bAddress.0xb88d4fde with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) = 0
                        address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512) = 0
                        if sub_2244cf8f[msg.sender] < 1:
                            revert with 0, 17
                        sub_2244cf8f[msg.sender]--
                        if sub_48f225d5 < 1:
                            revert with 0, 17
                        sub_48f225d5--
                        if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > -1:
                            revert with 0, 17
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = bool(cd[36])
                        emit 0xe19b8b68: 0, bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
            else:
                staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_300] == bool(mem[_300])
                _303 = mem[_300 + 32]
                if 11 < mem[_300 + 32]:
                    revert with 0, 17
                mem[0] = -mem[_300 + 32] + 11
                _314 = sha3(mem[0], 12)
                mem[32] = 13
                if packIndices[cd[((32 * idx) + cd[4] + 36)]] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 12)
                _318 = mem[64]
                mem[64] = mem[64] + 96
                mem[_318] = uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]])])
                mem[_318 + 32] = uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1])
                mem[_318 + 64] = address(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 2])
                if sub_ecdfa7fb < uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]):
                    revert with 0, 17
                if -_303 + 11 and sub_8e3d691b > -1 / -_303 + 11:
                    revert with 0, 17
                if (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 and sub_ecdfa7fb - uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) > -1 / (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000:
                    revert with 0, 17
                if not cd[36]:
                    if (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) and sub_258d9bce > -1 / (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000):
                        revert with 0, 17
                    if not totalAlphaStaked:
                        if unaccountedRewards > !((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) / 100):
                            revert with 0, 17
                        unaccountedRewards += (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) / 100
                        if 100 < sub_258d9bce:
                            revert with 0, 17
                        if (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) and -sub_258d9bce + 100 > -1 / (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000):
                            revert with 0, 17
                        _429 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_429] = cd[((32 * idx) + cd[4] + 36)]
                        mem[_429 + 32] = block.timestamp
                        mem[_429 + 64] = msg.sender
                    else:
                        if (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) / 100 > !unaccountedRewards:
                            revert with 0, 17
                        if not totalAlphaStaked:
                            revert with 0, 18
                        if sub_ecdfa7fb > !(((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) / 100) + unaccountedRewards / totalAlphaStaked):
                            revert with 0, 17
                        sub_ecdfa7fb += ((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000 * sub_258d9bce) / 100) + unaccountedRewards / totalAlphaStaked
                        unaccountedRewards = 0
                        if 100 < sub_258d9bce:
                            revert with 0, 17
                        if (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) and -sub_258d9bce + 100 > -1 / (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000):
                            revert with 0, 17
                        _452 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_452] = cd[((32 * idx) + cd[4] + 36)]
                        mem[_452 + 32] = block.timestamp
                        mem[_452 + 64] = msg.sender
                    uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0) = cd[((32 * idx) + cd[4] + 36)]
                    uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) = block.timestamp
                    address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512) = msg.sender
                    if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > !((100 * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (sub_258d9bce * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (100 * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) + (sub_258d9bce * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) / 100):
                        revert with 0, 17
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 15
                    sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] += (100 * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (sub_258d9bce * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (100 * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) + (sub_258d9bce * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) / 100
                    mem[mem[64]] = (100 * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (sub_258d9bce * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (100 * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) + (sub_258d9bce * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) / 100
                    mem[mem[64] + 32] = bool(cd[36])
                    emit 0xe19b8b68: (100 * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (sub_258d9bce * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (100 * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) + (sub_258d9bce * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) / 100, bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
                    if 0 > !((100 * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (sub_258d9bce * sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (100 * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) + (sub_258d9bce * uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) / 100):
                        revert with 0, 17
                else:
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 100
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    staticcall stor6.random(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args 0, 100, cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _338 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_338] <= 50:
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(sub_cdadcc7bAddress)
                        call sub_cdadcc7bAddress.0xb88d4fde with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) = 0
                        address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512) = 0
                        if sub_2244cf8f[msg.sender] < 1:
                            revert with 0, 17
                        sub_2244cf8f[msg.sender]--
                        if sub_48f225d5 < 1:
                            revert with 0, 17
                        sub_48f225d5--
                        if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > !((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000)):
                            revert with 0, 17
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] = sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] + (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000)
                        mem[mem[64]] = (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000)
                        mem[mem[64] + 32] = bool(cd[36])
                        emit 0xe19b8b68: (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000), bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
                        if 0 > !((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000)):
                            revert with 0, 17
                    else:
                        if not totalAlphaStaked:
                            if unaccountedRewards > !((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000)):
                                revert with 0, 17
                            unaccountedRewards = unaccountedRewards + (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000)
                        else:
                            if (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) > !unaccountedRewards:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                revert with 0, 18
                            if sub_ecdfa7fb > !((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) + unaccountedRewards / totalAlphaStaked):
                                revert with 0, 17
                            sub_ecdfa7fb += (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_314) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_303 * sub_8e3d691b) / 1000) + unaccountedRewards / totalAlphaStaked
                            unaccountedRewards = 0
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(sub_cdadcc7bAddress)
                        call sub_cdadcc7bAddress.0xb88d4fde with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                        uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) = 0
                        address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512) = 0
                        if sub_2244cf8f[msg.sender] < 1:
                            revert with 0, 17
                        sub_2244cf8f[msg.sender]--
                        if sub_48f225d5 < 1:
                            revert with 0, 17
                        sub_48f225d5--
                        if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > -1:
                            revert with 0, 17
                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = bool(cd[36])
                        emit 0xe19b8b68: 0, bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
        else:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            staticcall sub_cdadcc7bAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == mem[_258 + 12 len 20]
            if mem[_258 + 12 len 20] != this.address:
                revert with 0, 'AINT A PART OF THE PACK'
            staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_273] == bool(mem[_273])
            _278 = mem[_273 + 32]
            mem[0] = mem[_273 + 32]
            _283 = sha3(mem[0], 12)
            mem[32] = 13
            if packIndices[cd[((32 * idx) + cd[4] + 36)]] >= uint256(pack[mem[0]].field_0):
                revert with 0, 50
            mem[0] = sha3(mem[0], 12)
            _286 = mem[64]
            mem[64] = mem[64] + 96
            mem[_286] = uint256(stor[sha3(_283) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]])])
            mem[_286 + 32] = uint256(stor[sha3(_283) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1])
            mem[_286 + 64] = address(stor[sha3(_283) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 2])
            if address(stor[sha3(_283) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 2]) != msg.sender:
                revert with 0, 'msg.sender is not stake.owner 0'
            if block.timestamp < uint256(stor[sha3(_283) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]):
                revert with 0, 17
            if block.timestamp - uint256(stor[sha3(_283) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) < MINIMUM_TO_EXIT:
                revert with 0, 'block.timestamp - stake.value < MINIMUM_TO_EXIT'
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            staticcall sub_cdadcc7bAddress.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_296] == mem[_296 + 12 len 20]
            if mem[_296 + 12 len 20] != this.address:
                revert with 0, 'Token is not staked.'
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 11
            _305 = mem[64]
            mem[64] = mem[64] + 96
            mem[_305] = uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_0)
            mem[_305 + 32] = uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256)
            mem[_305 + 64] = address(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_512)
            staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_310] == bool(mem[_310])
            if not mem[_310]:
                if block.timestamp < uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256):
                    revert with 0, 17
                if block.timestamp - uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) and sub_eafe9e5e > -1 / block.timestamp - uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256):
                    revert with 0, 17
                if not cd[36]:
                    _339 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_339] = cd[((32 * idx) + cd[4] + 36)]
                    mem[_339 + 32] = sub_ecdfa7fb
                    mem[_339 + 64] = msg.sender
                    if packIndices[cd[((32 * idx) + cd[4] + 36)]] >= uint256(pack[_278].field_0):
                        revert with 0, 50
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_0) = cd[((32 * idx) + cd[4] + 36)]
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_256) = sub_ecdfa7fb
                    address(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_512) = msg.sender
                else:
                    if totalAlphaStaked < _278:
                        revert with 0, 17
                    totalAlphaStaked -= _278
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_cdadcc7bAddress)
                    call sub_cdadcc7bAddress.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 12
                    if uint256(pack[_278].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[_278].field_0) - 1 >= uint256(pack[_278].field_0):
                        revert with 0, 50
                    mem[0] = sha3(_278, 12)
                    _390 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_390] = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    mem[_390 + 32] = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    mem[_390 + 64] = address(pack[_278][uint256(pack[_278].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)]] >= uint256(pack[_278].field_0):
                        revert with 0, 50
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_0) = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_256) = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    address(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_512) = address(pack[_278][uint256(pack[_278].field_0)].field_0)
                    packIndices[uint256(stor12[_278][uint256(stor12[_278].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)]]
                    if not uint256(pack[_278].field_0):
                        revert with 0, 49
                    uint256(pack[_278][uint256(pack[_278].field_0)].field_0) = 0
                    uint256(pack[_278][uint256(pack[_278].field_0)].field_0) = 0
                    address(pack[_278][uint256(pack[_278].field_0)].field_0) = 0
                    uint256(pack[_278].field_0)--
                    packIndices[cd[((32 * idx) + cd[4] + 36)]] = 0
                    if sub_87079351[msg.sender] < 1:
                        revert with 0, 17
                    sub_87079351[msg.sender]--
                    if sub_5324a9de < 1:
                        revert with 0, 17
                    sub_5324a9de--
                if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > !((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600):
                    revert with 0, 17
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 15
                sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] += (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600
                mem[mem[64]] = (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600
                mem[mem[64] + 32] = bool(cd[36])
                emit 0xb2e9ca63: (block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600, bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
                if 0 > !((block.timestamp * sub_eafe9e5e) - (uint256(sub_c0ab3d72[cd[((32 * idx) + cd[4] + 36)]].field_256) * sub_eafe9e5e) / 24 * 3600):
                    revert with 0, 17
            else:
                staticcall sub_cdadcc7bAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_326] == bool(mem[_326])
                _331 = mem[_326 + 32]
                if 11 < mem[_326 + 32]:
                    revert with 0, 17
                mem[0] = -mem[_326 + 32] + 11
                _343 = sha3(mem[0], 12)
                mem[32] = 13
                if packIndices[cd[((32 * idx) + cd[4] + 36)]] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 12)
                _353 = mem[64]
                mem[64] = mem[64] + 96
                mem[_353] = uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]])])
                mem[_353 + 32] = uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1])
                mem[_353 + 64] = address(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 2])
                if sub_ecdfa7fb < uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]):
                    revert with 0, 17
                if -_331 + 11 and sub_8e3d691b > -1 / -_331 + 11:
                    revert with 0, 17
                if (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000 and sub_ecdfa7fb - uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) > -1 / (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000:
                    revert with 0, 17
                if not cd[36]:
                    _415 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_415] = cd[((32 * idx) + cd[4] + 36)]
                    mem[_415 + 32] = sub_ecdfa7fb
                    mem[_415 + 64] = msg.sender
                    if packIndices[cd[((32 * idx) + cd[4] + 36)]] >= uint256(pack[_278].field_0):
                        revert with 0, 50
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_0) = cd[((32 * idx) + cd[4] + 36)]
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_256) = sub_ecdfa7fb
                    address(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_512) = msg.sender
                else:
                    if totalAlphaStaked < _278:
                        revert with 0, 17
                    totalAlphaStaked -= _278
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_cdadcc7bAddress)
                    call sub_cdadcc7bAddress.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 12
                    if uint256(pack[_278].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[_278].field_0) - 1 >= uint256(pack[_278].field_0):
                        revert with 0, 50
                    mem[0] = sha3(_278, 12)
                    _460 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_460] = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    mem[_460 + 32] = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    mem[_460 + 64] = address(pack[_278][uint256(pack[_278].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)]] >= uint256(pack[_278].field_0):
                        revert with 0, 50
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_0) = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    uint256(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_256) = uint256(pack[_278][uint256(pack[_278].field_0)].field_0)
                    address(pack[_278][stor13[cd[((32 * idx) + cd[4] + 36)]]].field_512) = address(pack[_278][uint256(pack[_278].field_0)].field_0)
                    packIndices[uint256(stor12[_278][uint256(stor12[_278].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)]]
                    if not uint256(pack[_278].field_0):
                        revert with 0, 49
                    uint256(pack[_278][uint256(pack[_278].field_0)].field_0) = 0
                    uint256(pack[_278][uint256(pack[_278].field_0)].field_0) = 0
                    address(pack[_278][uint256(pack[_278].field_0)].field_0) = 0
                    uint256(pack[_278].field_0)--
                    packIndices[cd[((32 * idx) + cd[4] + 36)]] = 0
                    if sub_87079351[msg.sender] < 1:
                        revert with 0, 17
                    sub_87079351[msg.sender]--
                    if sub_5324a9de < 1:
                        revert with 0, 17
                    sub_5324a9de--
                if sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] > !((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000)):
                    revert with 0, 17
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 15
                sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] = sub_5c8204d7[cd[((32 * idx) + cd[4] + 36)]] + (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000)
                mem[mem[64]] = (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000)
                mem[mem[64] + 32] = bool(cd[36])
                emit 0xb2e9ca63: (sub_ecdfa7fb * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000), bool(cd[36]), cd[((32 * idx) + cd[4] + 36)]
                if 0 > !((sub_ecdfa7fb * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000) - (uint256(stor[sha3(_343) + (3 * stor13[cd[((32 * idx) + cd[4] + 36)]]) + 1]) * (11 * sub_8e3d691b) - (_331 * sub_8e3d691b) / 1000)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(greaseAddress)
    call greaseAddress.0x9c47ee3b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}



}
