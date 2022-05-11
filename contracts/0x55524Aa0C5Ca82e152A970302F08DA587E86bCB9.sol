contract main {




// =====================  Runtime code  =====================


const PRESALE_MAX_TOKEN = 50000 * 10^18

const MIN_PER_ACCOUNT = 25 * 10^18

const DEFAULT_ANB_PRICE = 10

const MAX_PER_ACCOUNT = 490 * 10^18

const GUARANTEED_PER_ACCOUNT = 50 * 10^18


address stor0;
mapping of uint8 stor1;
address owner;
address presale_tokenAddress;
uint256 presale_sold;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
mapping of struct currentAnb;
mapping of struct stor7;
array of address stor8;
mapping of uint8 stor9;

function presale_claim_enable() payable {
    return bool(uint8(stor5.field_8))
}

function currentAnb(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return currentAnb[address(arg1)].field_256
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

function presale_token() payable {
    return presale_tokenAddress
}

function _fallback() payable {
    revert
}

function setPresaleToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    presale_tokenAddress = arg1
}

function setPresaleState(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    uint8(stor5.field_0) = uint8(arg1)
}

function setPresaleClaimState(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    Mask(248, 0, stor5.field_8) = Mask(248, 0, arg1)
}

function maxBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 490 * 10^18 < currentAnb[address(arg1)].field_256:
        revert with 0, 17
    return (-currentAnb[address(arg1)].field_256 + 490 * 10^18)
}

function isAllSign() payable {
    idx = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 9
        if not stor9[address(stor8[idx])]:
            return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return bool(stor8.length)
}

function currentSold() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSign(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if address(stor8[idx]) != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor9[msg.sender] = uint8(arg1)
    revert with 0, 'Signer is not in the multisign'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == owner
    idx = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 9
        if not stor9[address(stor8[idx])]:
            revert with 0, 'Multi sign required'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not stor8.length:
        revert with 0, 'Multi sign required'
    require ext_code.size(stor0)
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
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
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
    require msg.sender == owner
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 0, 50
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        currentAnb[mem[(32 * idx) + 140 len 20]].field_0 = 50 * 10^18
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1.length and 50 * 10^18 > -1 / arg1.length:
        revert with 0, 17
    if presale_sold > !(50 * 10^18 * arg1.length):
        revert with 0, 17
    presale_sold += 50 * 10^18 * arg1.length
}

function setMultiSig(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
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
    require msg.sender == owner
    stor8.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor8[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    while arg1.length > idx:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimAnubToken() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not uint8(stor5.field_8):
        revert with 0, 'Claim disabled'
    if currentAnb[msg.sender].field_256 >= stor7[msg.sender].field_512:
        revert with 0, 'No tokens to claim'
    if block.timestamp <= stor7[msg.sender].field_0:
        revert with 0, 'Daily claimed already transfered'
    if stor7[msg.sender].field_0:
        if currentAnb[msg.sender].field_256 > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        stor7[msg.sender].field_256 = 16 * currentAnb[msg.sender].field_256 / 100
    else:
        if currentAnb[msg.sender].field_256 > 0x71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c:
            revert with 0, 17
        stor7[msg.sender].field_256 = 36 * currentAnb[msg.sender].field_256 / 100
        stor7[msg.sender].field_0 = block.timestamp
    if stor7[msg.sender].field_512 > !stor7[msg.sender].field_256:
        revert with 0, 17
    if stor7[msg.sender].field_512 + stor7[msg.sender].field_256 <= currentAnb[msg.sender].field_256:
        require ext_code.size(presale_tokenAddress)
        call presale_tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor7[msg.sender].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor7[msg.sender].field_512 > !stor7[msg.sender].field_256:
            revert with 0, 17
        stor7[msg.sender].field_512 += stor7[msg.sender].field_256
    else:
        if currentAnb[msg.sender].field_256 < stor7[msg.sender].field_512:
            revert with 0, 17
        require ext_code.size(presale_tokenAddress)
        call presale_tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, currentAnb[msg.sender].field_256 - stor7[msg.sender].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor7[msg.sender].field_512 > !(currentAnb[msg.sender].field_256 - stor7[msg.sender].field_512):
            revert with 0, 17
        stor7[msg.sender].field_512 = currentAnb[msg.sender].field_256
    if stor7[msg.sender].field_0 > -86401:
        revert with 0, 17
    stor7[msg.sender].field_0 += 24 * 3600
}

function buyAnubToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    if not uint8(stor5.field_0):
        revert with 0, 'Presale disabled'
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not whitelised'
    if arg1 and 10 > -1 / arg1:
        revert with 0, 17
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10 * arg1:
        revert with 0, 'MIM Balance insufficient'
    if arg1 < currentAnb[msg.sender].field_0:
        if presale_sold > !arg1:
            revert with 0, 17
        if presale_sold + arg1 > 50000 * 10^18:
            revert with 0, 'No more token available (limit reached)'
    if arg1 < 25 * 10^18:
        revert with 0, 'Amount is not sufficient'
    if arg1 > !currentAnb[msg.sender].field_256:
        revert with 0, 17
    if arg1 + currentAnb[msg.sender].field_256 > 490 * 10^18:
        revert with 0, 'Amount buyable reached'
    if not currentAnb[msg.sender].field_0:
        if presale_sold > !arg1:
            revert with 0, 17
        presale_sold += arg1
        if arg1 and 10 > -1 / arg1:
            revert with 0, 17
        require ext_code.size(stor0)
        call stor0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if currentAnb[msg.sender].field_256 > !arg1:
            revert with 0, 17
        currentAnb[msg.sender].field_256 += arg1
    else:
        if currentAnb[msg.sender].field_0 < arg1:
            revert with 0, 17
        if currentAnb[msg.sender].field_0 - arg1 >= 0:
            if currentAnb[msg.sender].field_0 < arg1:
                revert with 0, 17
            currentAnb[msg.sender].field_0 -= arg1
            if arg1 and 10 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(stor0)
            call stor0.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if currentAnb[msg.sender].field_256 > !arg1:
                revert with 0, 17
            currentAnb[msg.sender].field_256 += arg1
        else:
            if presale_sold > !arg1:
                revert with 0, 17
            if presale_sold + arg1 <= 50000 * 10^18:
                if arg1 < currentAnb[msg.sender].field_0:
                    revert with 0, 17
                if presale_sold > !(arg1 - currentAnb[msg.sender].field_0):
                    revert with 0, 17
                presale_sold = presale_sold + arg1 - currentAnb[msg.sender].field_0
                currentAnb[msg.sender].field_0 = 0
                if arg1 and 10 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(stor0)
                call stor0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 10 * arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if currentAnb[msg.sender].field_256 > !arg1:
                    revert with 0, 17
                currentAnb[msg.sender].field_256 += arg1
            else:
                if 50000 * 10^18 < presale_sold:
                    revert with 0, 17
                if -presale_sold + 50000 * 10^18 < currentAnb[msg.sender].field_0:
                    revert with 0, 17
                if presale_sold > !(-presale_sold + -currentAnb[msg.sender].field_0 + 50000 * 10^18):
                    revert with 0, 17
                presale_sold = -currentAnb[msg.sender].field_0 + 50000 * 10^18
                currentAnb[msg.sender].field_0 = 0
                if -presale_sold + 50000 * 10^18 and 10 > -1 / -presale_sold + 50000 * 10^18:
                    revert with 0, 17
                require ext_code.size(stor0)
                call stor0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (-10 * presale_sold) + 500000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if currentAnb[msg.sender].field_256 > !(-presale_sold + 50000 * 10^18):
                    revert with 0, 17
                currentAnb[msg.sender].field_256 = currentAnb[msg.sender].field_256 + -presale_sold + 50000 * 10^18
}



}
