contract main {




// =====================  Runtime code  =====================


#
#  - sub_76928407(?)
#  - sub_abf6355b(?)
#
const sub_0feba181(?) = (48 * 24 * 3600)

const sub_51d1174e(?) = (24 * 3600)


uint8 stor0; offset 160
address owner;
array of struct stor1;
uint256 sub_fee108b0;
uint256 sub_1897ff8d;
uint256 sub_030a48eb;
uint256 sub_b8426be4;
uint256 sub_fa244830;
uint256 sub_968089d0;
uint256 sub_13c43d7a;
uint256 sub_058cd717;
uint256 sub_f494f2e3;
uint256 sub_722e6537;
array of uint256 stor2;
uint256 sub_00f13e44;
uint256 claimingFee;
uint256 unstakeFee;
uint256 stor23;
uint8 rescueEnabled;
uint8 sub_7e9bd394; offset 8
address stor24; offset 16
address stor25;
array of uint256 stor26;
array of uint256 stor27;
uint256 sub_faaec849;
mapping of struct nftInfo;
uint256 sub_f506d201;
array of struct sub_0cbc4a27;
uint256 sub_e3f07219;
uint256 sub_6abc102a;
uint256 sub_b1f9fbe2;
uint256 sub_2712c025;
uint256 sub_72da4b4e;
uint256 sub_0bd269ba;

function sub_00f13e44(?) {
    return sub_00f13e44
}

function sub_030a48eb(?) {
    return sub_030a48eb
}

function sub_058cd717(?) {
    return sub_058cd717
}

function sub_0a5c7872(?) {
    return stor1.length
}

function sub_0bd269ba(?) {
    return sub_0bd269ba
}

function sub_0cbc4a27(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_0cbc4a27[arg1].field_0
    return sub_0cbc4a27[arg1][arg2].field_0
}

function sub_11d4cde3(?) {
    return stor2.length
}

function sub_13c43d7a(?) {
    return sub_13c43d7a
}

function sub_1897ff8d(?) {
    return sub_1897ff8d
}

function sub_2712c025(?) {
    return sub_2712c025
}

function sub_376ce821(?) {
    require calldata.size - 4 >= 32
    return nftInfo[arg1].field_0, 
           uint8(nftInfo[arg1].field_256),
           address(nftInfo[arg1].field_256),
           Mask(80, 0, nftInfo[arg1].field_256),
           nftInfo[arg1].field_512
}

function rescueEnabled() {
    return bool(rescueEnabled)
}

function paused() {
    return bool(stor0)
}

function sub_6abc102a(?) {
    return sub_6abc102a
}

function sub_722e6537(?) {
    return sub_722e6537
}

function sub_72da4b4e(?) {
    return sub_72da4b4e
}

function sub_7e9bd394(?) {
    return bool(sub_7e9bd394)
}

function owner() {
    return owner
}

function unstakeFee() {
    return unstakeFee
}

function sub_968089d0(?) {
    return sub_968089d0
}

function sub_acdde082(?) {
    return stor26.length
}

function sub_b1f9fbe2(?) {
    return sub_b1f9fbe2
}

function sub_b8426be4(?) {
    return sub_b8426be4
}

function getNftInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return nftInfo[arg1].field_0, 
           uint8(nftInfo[arg1].field_256),
           address(nftInfo[arg1].field_256),
           Mask(80, 0, nftInfo[arg1].field_256),
           nftInfo[arg1].field_512
}

function sub_dd1d130c(?) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 >= stor26.length:
        revert with 0, 50
    return sub_dd1d130c[uint8(arg1 - 1)]
}

function sub_e3f07219(?) {
    return sub_e3f07219
}

function claimingFee() {
    return claimingFee
}

function sub_f494f2e3(?) {
    return sub_f494f2e3
}

function sub_f506d201(?) {
    return sub_f506d201
}

function sub_fa244830(?) {
    return sub_fa244830
}

function sub_faaec849(?) {
    return sub_faaec849
}

function sub_fee108b0(?) {
    return sub_fee108b0
}

function _fallback() payable {
    revert
}

function sub_554cde1a(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = 0
}

function sub_a6de7b2c(?) {
    if sub_b1f9fbe2 > !sub_6abc102a:
        revert with 0, 17
    return (sub_b1f9fbe2 + sub_6abc102a)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4263d369(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1897ff8d = arg1
}

function sub_764cee51(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fee108b0 = arg1
}

function sub_7b71defe(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_030a48eb = arg1
}

function sub_88349b93(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2712c025 = arg1
}

function sub_ba6a63dc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e3f07219 = arg1
}

function sub_e2bcc580(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0bd269ba = arg1
}

function sub_e82b4aaa(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_72da4b4e = arg1
}

function sub_f841b6ad(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b8426be4 = arg1
}

function setUnstakeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unstakeFee = arg1
}

function setClaimingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimingFee = arg1
}

function sub_42421eac(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not rescueEnabled:
        rescueEnabled = 1
    else:
        rescueEnabled = 0
}

function sub_cd6dcdaf(?) {
    require calldata.size - 4 >= 32
    if Mask(80, 0, nftInfo[arg1].field_424) > -172801:
        revert with 0, 17
    return (Mask(80, 0, nftInfo[arg1].field_424) + (48 * 24 * 3600))
}

function sub_4019bfc7(?) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 >= stor26.length:
        revert with 0, 50
    if sub_dd1d130c[uint8(arg1 - 1)] != 2:
        return 0
    return 1
}

function sub_622d7a72(?) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 >= stor26.length:
        revert with 0, 50
    if sub_dd1d130c[uint8(arg1 - 1)] != 3:
        return 0
    return 1
}

function sub_d3ee10e0(?) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 >= stor26.length:
        revert with 0, 50
    if sub_dd1d130c[uint8(arg1 - 1)] != 1:
        return 0
    return 1
}

function sub_4e16784d(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        sub_7e9bd394 = 1
    else:
        sub_7e9bd394 = 0
}

function sub_8910ce85(?) {
    staticcall stor24.0x8910ce85 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1f79cc64(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 >= stor26.length:
        revert with 0, 50
    stor26[0.03125 / arg1 - 1].field_0 = uint8(arg2) * 256^(arg1 - 1 % 32) or !(255 * 256^(arg1 - 1 % 32)) and stor26[0.03125 / arg1 - 1].field_0
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

function sub_81224ee9(?) {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 >= stor26.length:
        revert with 0, 50
    stor26[0.03125 / arg1 - 1].field_0 = uint8(arg2) * 256^(arg1 - 1 % 32) or !(255 * 256^(arg1 - 1 % 32)) and stor26[0.03125 / arg1 - 1].field_0
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function sub_7b814da0(?) {
    if sub_0cbc4a27[msg.sender].field_0:
        mem[128] = sub_0cbc4a27[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_0cbc4a27[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_0cbc4a27[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_0cbc4a27[msg.sender].field_0, data=mem[128 len 32 * sub_0cbc4a27[msg.sender].field_0])
    mem[(32 * sub_0cbc4a27[msg.sender].field_0) + 128] = 32
    mem[(32 * sub_0cbc4a27[msg.sender].field_0) + 160] = sub_0cbc4a27[msg.sender].field_0
    mem[(32 * sub_0cbc4a27[msg.sender].field_0) + 192 len 32 * sub_0cbc4a27[msg.sender].field_0] = mem[128 len 32 * sub_0cbc4a27[msg.sender].field_0]
    return memory
      from (32 * sub_0cbc4a27[msg.sender].field_0) + 128
       len (96 * sub_0cbc4a27[msg.sender].field_0) + 64
}

function sub_f3b994f2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor27.length++
        mem[0] = 27
        stor27[stor27.length] = mem[(32 * idx) + 159 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_eb31b13d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor26.length++
        mem[0] = 26
        stor26[Mask(251, 0, stor26.length.field_5)].field_0 = stor26[Mask(251, 0, stor26.length.field_5)].field_0 and !(255 * 256^stor26.length % 32) or 256^stor26.length % 32 * mem[(32 * idx) + 159 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ad8804d0(?) {
    if sub_0cbc4a27[msg.sender].field_0:
        mem[128] = sub_0cbc4a27[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_0cbc4a27[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_0cbc4a27[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_0cbc4a27[msg.sender].field_0:
        if stor1.length < sub_e3f07219:
            if idx >= sub_0cbc4a27[msg.sender].field_0:
                revert with 0, 50
            if mem[(32 * idx) + 128] < 1:
                revert with 0, 17
            if mem[(32 * idx) + 128] - 1 >= stor27.length:
                revert with 0, 50
            if 0 == stor27[mem[(32 * idx) + 128]]:
                if idx >= sub_0cbc4a27[msg.sender].field_0:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 29
                if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                    revert with 0, 17
                if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and 0 > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                    revert with 0, 17
            else:
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * idx) + 128] - 1 >= stor27.length:
                    revert with 0, 50
                if 1 == stor27[mem[(32 * idx) + 128]]:
                    if idx >= sub_0cbc4a27[msg.sender].field_0:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 29
                    if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and sub_2712c025 > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                        revert with 0, 17
                    if 0 > !((block.timestamp * sub_2712c025) - (Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) * sub_2712c025) / 24 * 3600):
                        revert with 0, 17
                else:
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor27.length:
                        revert with 0, 50
                    if 2 == stor27[mem[(32 * idx) + 128]]:
                        if idx >= sub_0cbc4a27[msg.sender].field_0:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 29
                        if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and sub_72da4b4e > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                            revert with 0, 17
                        if 0 > !((block.timestamp * sub_72da4b4e) - (Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) * sub_72da4b4e) / 24 * 3600):
                            revert with 0, 17
                    else:
                        if mem[(32 * idx) + 128] < 1:
                            revert with 0, 17
                        if mem[(32 * idx) + 128] - 1 >= stor27.length:
                            revert with 0, 50
                        if 3 == stor27[mem[(32 * idx) + 128]]:
                            if idx >= sub_0cbc4a27[msg.sender].field_0:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 29
                            if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                revert with 0, 17
                            if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and sub_0bd269ba > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                revert with 0, 17
                            if 0 > !((block.timestamp * sub_0bd269ba) - (Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) * sub_0bd269ba) / 24 * 3600):
                                revert with 0, 17
                        else:
                            if mem[(32 * idx) + 128] < 1:
                                revert with 0, 17
                            if mem[(32 * idx) + 128] - 1 >= stor27.length:
                                revert with 0, 50
                            if 4 == stor27[mem[(32 * idx) + 128]]:
                                if idx >= sub_0cbc4a27[msg.sender].field_0:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 128]
                                mem[32] = 29
                                if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                    revert with 0, 17
                                if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and sub_fee108b0 > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                    revert with 0, 17
                                if 0 > !((block.timestamp * sub_fee108b0) - (Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) * sub_fee108b0) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if mem[(32 * idx) + 128] < 1:
                                    revert with 0, 17
                                if mem[(32 * idx) + 128] - 1 >= stor27.length:
                                    revert with 0, 50
                                if 5 == stor27[mem[(32 * idx) + 128]]:
                                    if idx >= sub_0cbc4a27[msg.sender].field_0:
                                        revert with 0, 50
                                    mem[0] = mem[(32 * idx) + 128]
                                    mem[32] = 29
                                    if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                        revert with 0, 17
                                    if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and sub_1897ff8d > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                        revert with 0, 17
                                    if 0 > !((block.timestamp * sub_1897ff8d) - (Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) * sub_1897ff8d) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if mem[(32 * idx) + 128] < 1:
                                        revert with 0, 17
                                    if mem[(32 * idx) + 128] - 1 >= stor27.length:
                                        revert with 0, 50
                                    if 6 == stor27[mem[(32 * idx) + 128]]:
                                        if idx >= sub_0cbc4a27[msg.sender].field_0:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 29
                                        if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                            revert with 0, 17
                                        if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and sub_030a48eb > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                            revert with 0, 17
                                        if 0 > !((block.timestamp * sub_030a48eb) - (Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) * sub_030a48eb) / 24 * 3600):
                                            revert with 0, 17
                                    else:
                                        if mem[(32 * idx) + 128] < 1:
                                            revert with 0, 17
                                        if mem[(32 * idx) + 128] - 1 >= stor27.length:
                                            revert with 0, 50
                                        if idx >= sub_0cbc4a27[msg.sender].field_0:
                                            revert with 0, 50
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 29
                                        if block.timestamp < Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                            revert with 0, 17
                                        if stor27[mem[(32 * idx) + 128]] != 7:
                                            if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and 0 > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                                revert with 0, 17
                                        else:
                                            if block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) and sub_b8426be4 > -1 / block.timestamp - Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424):
                                                revert with 0, 17
                                            if 0 > !((block.timestamp * sub_b8426be4) - (Mask(80, 0, nftInfo[mem[(32 * idx) + 128]].field_424) * sub_b8426be4) / 24 * 3600):
                                                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_ddc8685b(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not rescueEnabled:
        revert with 0, 'Rescue is not activate'
    if address(cd[4]) != msg.sender:
        revert with 0, 'Not your account'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 29
        _403 = sha3(mem[(32 * idx) + 128], 29)
        _404 = mem[64]
        mem[64] = mem[64] + 160
        mem[_404] = nftInfo[mem[(32 * idx) + 128]].field_0
        mem[_404 + 32] = uint8(stor1[_403].field_0)
        mem[_404 + 64] = address(stor1[_403].field_8)
        mem[_404 + 96] = Mask(80, 0, stor1[_403].field_168)
        mem[_404 + 128] = stor2[_403]
        if address(cd[4]) != address(stor1[_403].field_8):
            revert with 0, 'Is not your NFT'
        if idx >= mem[96]:
            revert with 0, 50
        _407 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _407
        require ext_code.size(stor25)
        call stor25.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _407
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        nftInfo[mem[(32 * idx) + 128]].field_0 = 0
        Mask(248, 0, nftInfo[mem[(32 * idx) + 128]].field_256) = 0
        nftInfo[mem[(32 * idx) + 128]].field_512 = 0
        if sub_faaec849 < 1:
            revert with 0, 17
        sub_faaec849--
        if idx >= mem[96]:
            revert with 0, 50
        if mem[(32 * idx) + 128] < 1:
            revert with 0, 17
        if mem[(32 * idx) + 128] - 1 >= stor26.length:
            revert with 0, 50
        if stor('array', ('div', 0.03125, ('add', -1, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)))), ('name', 'stor26', 26))[uint8(mem[(32 * idx) + 128] - 1)] != 3:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[(32 * idx) + 128] < 1:
                revert with 0, 17
            if mem[(32 * idx) + 128] - 1 >= stor26.length:
                revert with 0, 50
            if stor('array', ('div', 0.03125, ('add', -1, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)))), ('name', 'stor26', 26))[uint8(mem[(32 * idx) + 128] - 1)] != 2:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * idx) + 128] - 1 >= stor26.length:
                    revert with 0, 50
                if stor('array', ('div', 0.03125, ('add', -1, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)))), ('name', 'stor26', 26))[uint8(mem[(32 * idx) + 128] - 1)] != 1:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _611 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_611'))), ('name', 'stor26', 26))[uint8(_611 - 1)], 0, 6
                else:
                    if sub_f494f2e3 < 1:
                        revert with 0, 17
                    sub_f494f2e3--
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _612 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_612'))), ('name', 'stor26', 26))[uint8(_612 - 1)], 0, 6
            else:
                if sub_058cd717 < 1:
                    revert with 0, 17
                sub_058cd717--
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * idx) + 128] - 1 >= stor26.length:
                    revert with 0, 50
                if stor('array', ('div', 0.03125, ('add', -1, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)))), ('name', 'stor26', 26))[uint8(mem[(32 * idx) + 128] - 1)] != 1:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _613 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_613'))), ('name', 'stor26', 26))[uint8(_613 - 1)], 0, 6
                else:
                    if sub_f494f2e3 < 1:
                        revert with 0, 17
                    sub_f494f2e3--
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _614 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_614'))), ('name', 'stor26', 26))[uint8(_614 - 1)], 0, 6
        else:
            if sub_13c43d7a < 1:
                revert with 0, 17
            sub_13c43d7a--
            if idx >= mem[96]:
                revert with 0, 50
            if mem[(32 * idx) + 128] < 1:
                revert with 0, 17
            if mem[(32 * idx) + 128] - 1 >= stor26.length:
                revert with 0, 50
            if stor('array', ('div', 0.03125, ('add', -1, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)))), ('name', 'stor26', 26))[uint8(mem[(32 * idx) + 128] - 1)] != 2:
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * idx) + 128] - 1 >= stor26.length:
                    revert with 0, 50
                if stor('array', ('div', 0.03125, ('add', -1, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)))), ('name', 'stor26', 26))[uint8(mem[(32 * idx) + 128] - 1)] != 1:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _615 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_615'))), ('name', 'stor26', 26))[uint8(_615 - 1)], 0, 6
                else:
                    if sub_f494f2e3 < 1:
                        revert with 0, 17
                    sub_f494f2e3--
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _616 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_616'))), ('name', 'stor26', 26))[uint8(_616 - 1)], 0, 6
            else:
                if sub_058cd717 < 1:
                    revert with 0, 17
                sub_058cd717--
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[(32 * idx) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * idx) + 128] - 1 >= stor26.length:
                    revert with 0, 50
                if stor('array', ('div', 0.03125, ('add', -1, ('mem', ('range', ('add', 128, ('mul', 32, ('var', 0))), 32)))), ('name', 'stor26', 26))[uint8(mem[(32 * idx) + 128] - 1)] != 1:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _617 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_617'))), ('name', 'stor26', 26))[uint8(_617 - 1)], 0, 6
                else:
                    if sub_f494f2e3 < 1:
                        revert with 0, 17
                    sub_f494f2e3--
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[32] = 30
                    s = 0
                    while s < sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                        mem[0] = sha3(address(stor1[_403].field_0), 30)
                        if sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 == mem[(32 * idx) + 128]:
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            if s >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 < 1:
                                revert with 0, 17
                            if sub_0cbc4a27[address(stor1[_403].field_0)].field_0 - 1 >= sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 50
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)][s].field_0
                            if not sub_0cbc4a27[address(stor1[_403].field_0)].field_0:
                                revert with 0, 49
                            sub_0cbc4a27[address(stor1[_403].field_0)][sub_0cbc4a27[address(stor1[_403].field_0)].field_0].field_0 = 0
                            sub_0cbc4a27[address(stor1[_403].field_0)].field_0--
                            mem[32] = 30
                            sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 = sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            mem[0] = sha3(address(stor1[_403].field_0), 30)
                            t = sha3(sha3(address(address(stor1[_403].field_8)), 30))
                            idx = sha3(sha3(address(stor1[_403].field_0), 30))
                            while sha3(sha3(address(stor1[_403].field_0), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0 > idx:
                                stor[t] = stor[idx]
                                t = t + 1
                                idx = idx + 1
                                continue 
                            idx = sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(stor1[_403].field_0)].field_0
                            while sha3(sha3(address(address(stor1[_403].field_8)), 30)) + sub_0cbc4a27[address(address(stor1[_403].field_8))].field_0 > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _618 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] < 1:
                        revert with 0, 17
                    if mem[(32 * idx) + 128] - 1 >= stor26.length:
                        revert with 0, 50
                    mem[0] = 26
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = 1
                    emit 0xe4a3da1a: mem[mem[64]], 1, stor('array', ('div', 0.03125, ('add', -1, ('var', '_618'))), ('name', 'stor26', 26))[uint8(_618 - 1)], 0, 6
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
