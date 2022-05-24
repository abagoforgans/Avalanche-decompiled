contract main {




// =====================  Runtime code  =====================


const sub_26126664(?) = 7

const PRESALE_MAX_TOKEN = 42800 * 10^18

const MIN_PER_ACCOUNT = 7 * 10^18

const MAX_PER_ACCOUNT = (375 * 10^14 * 24 * 3600)


address stor0;
mapping of uint8 stor1;
address owner;
address sub_ed740824Address;
uint256 presale_sold;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
mapping of uint256 sub_b5ef792e;
mapping of struct stor7;
array of address stor8;
mapping of uint8 stor9;

function presale_claim_enable() payable {
    return bool(uint8(stor5.field_8))
}

function isWhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function presale_sold() payable {
    return presale_sold
}

function owner() payable {
    return owner
}

function presale_enable() payable {
    return bool(uint8(stor5.field_0))
}

function sub_b5ef792e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b5ef792e[address(arg1)]
}

function sub_ed740824(?) payable {
    return sub_ed740824Address
}

function _fallback() payable {
    revert
}

function setPresaleToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You need to be the owner'
    sub_ed740824Address = arg1
}

function setPresaleState(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You need to be the owner'
    uint8(stor5.field_0) = uint8(arg1)
}

function setPresaleClaimState(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You need to be the owner'
    Mask(248, 0, stor5.field_8) = Mask(248, 0, arg1)
}

function maxBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 375 * 10^14 * 24 * 3600 < sub_b5ef792e[address(arg1)]:
        revert with 0, 17
    return (-sub_b5ef792e[address(arg1)] + (375 * 10^14 * 24 * 3600))
}

function currentSold() payable {
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3c68af3e(?) payable {
    idx = 0
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 9
        if not stor9[stor8[idx]]:
            return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return bool(stor8.length)
}

function setSign(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor9[msg.sender] = uint8(arg1)
    revert with 0, 'Signer is not in the multisig'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You need to be the owner'
    idx = 0
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 9
        if not stor9[stor8[idx]]:
            revert with 0, 'MultiSig required'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not stor8.length:
        revert with 0, 'MultiSig required'
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setWhiteListed(address[] arg1) payable {
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
    if owner != msg.sender:
        revert with 0, 'You need to be the owner'
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6841d111(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor5.field_0):
        revert with 0, 'Presale is not available yet!'
    if not stor1[msg.sender]:
        revert with 0, 'Not whitelised'
    if presale_sold > !arg1:
        revert with 0, 17
    if presale_sold + arg1 > 42800 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No more token available (limit reached)'
    if sub_b5ef792e[msg.sender] > !arg1:
        revert with 0, 17
    if sub_b5ef792e[msg.sender] + arg1 < 7 * 10^18:
        revert with 0, 'Amount is not sufficient'
    if arg1 > !sub_b5ef792e[msg.sender]:
        revert with 0, 17
    if arg1 + sub_b5ef792e[msg.sender] > 375 * 10^14 * 24 * 3600:
        revert with 0, 'Amount buyable reached'
    if presale_sold > !arg1:
        revert with 0, 17
    presale_sold += arg1
    if arg1 and 7 > -1 / arg1:
        revert with 0, 17
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 7 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_b5ef792e[msg.sender] > !arg1:
        revert with 0, 17
    sub_b5ef792e[msg.sender] += arg1
}

function sub_ce7ba341(?) payable {
    if not uint8(stor5.field_8):
        revert with 0, 'Claim is not available yet!'
    if sub_b5ef792e[msg.sender] <= stor7[msg.sender].field_512:
        revert with 0, 'No tokens to claim'
    if block.timestamp <= stor7[msg.sender].field_0:
        revert with 0, 'Daily claimed already transfered'
    if sub_b5ef792e[msg.sender] > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d:
        revert with 0, 17
    stor7[msg.sender].field_256 = 25 * sub_b5ef792e[msg.sender] / 100
    if stor7[msg.sender].field_512 > !(25 * sub_b5ef792e[msg.sender] / 100):
        revert with 0, 17
    if stor7[msg.sender].field_512 + (25 * sub_b5ef792e[msg.sender] / 100) <= sub_b5ef792e[msg.sender]:
        call sub_ed740824Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 25 * sub_b5ef792e[msg.sender] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor7[msg.sender].field_512 > !(25 * sub_b5ef792e[msg.sender] / 100):
            revert with 0, 17
        stor7[msg.sender].field_512 += 25 * sub_b5ef792e[msg.sender] / 100
    else:
        if sub_b5ef792e[msg.sender] < stor7[msg.sender].field_512:
            revert with 0, 17
        call sub_ed740824Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_b5ef792e[msg.sender] - stor7[msg.sender].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor7[msg.sender].field_512 > !(sub_b5ef792e[msg.sender] - stor7[msg.sender].field_512):
            revert with 0, 17
        stor7[msg.sender].field_512 = sub_b5ef792e[msg.sender]
    if 24 * 3600 > !block.timestamp:
        revert with 0, 17
    stor7[msg.sender].field_0 = block.timestamp + (24 * 3600)
}



}
