contract main {




// =====================  Runtime code  =====================


const sub_2e057e9b(?) = 50 * 10^18

const sub_613c273d(?) = 50 * 10^18

const sub_69f93654(?) = 60000 * 10^18

const sub_6ab55fd9(?) = 10^18

const sub_76757a39(?) = 5

const sub_808c173c(?) = 250 * 10^18


mapping of uint8 stor0;
mapping of uint256 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 stor4;
array of address stor5;
address stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function isWhitelist() payable {
    return bool(stor0[msg.sender])
}

function _fallback() payable {
    revert
}

function currentSold() payable {
    if 250 * 10^18 < stor1[msg.sender]:
        revert with 0, 17
    return (-stor1[msg.sender] + 250 * 10^18)
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor8
    stor10 = arg1
}

function sub_d94090c2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == stor8
    stor6 = address(arg1)
    stor7 = arg2
}

function sign() payable {
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx]) != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor3[msg.sender] = 1
    revert with 0, 'Is not signer'
}

function withdraw() payable {
    require msg.sender == stor8
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args stor6, stor7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3392f37b(?) payable {
    if 24 * 3600 > !stor12:
        revert with 0, 17
    if stor12 + (24 * 3600) < block.timestamp:
        revert with 0, 'First claim is not yet possible'
    if stor2[msg.sender]:
        revert with 0, 'Claim already done'
    stor2[msg.sender] = 1
    call stor10.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor1[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e14132f7(?) payable {
    require calldata.size - 4 >= 32
    if not stor11:
        revert with 0, 'Purchase is not enable'
    if arg1 < 50 * 10^18:
        revert with 0, 'Allocation insufficient'
    if arg1 > 250 * 10^18:
        revert with 0, 'Allocation too high'
    call stor9.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 5 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor1[msg.sender] > !arg1:
        revert with 0, 17
    stor1[msg.sender] += arg1
    if stor13 > !arg1:
        revert with 0, 17
    stor13 += arg1
}

function addWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require msg.sender == stor8
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        if stor14 > -50000000000000000001:
            revert with 0, 17
        stor14 += 50 * 10^18
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor4 > !arg1.length:
        revert with 0, 17
    stor4 += arg1.length
}

function sub_92450476(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require msg.sender == stor8
    if stor5.length:
        revert with 0, 'Signers already initialized'
    stor5.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(stor5[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor5.length:
        mem[0] = address(stor5[idx])
        mem[32] = 3
        stor3[address(stor5[idx])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
