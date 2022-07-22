contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - sub_7b196fbc(?)
#  - deposit(uint256 arg1)
#
const decimals = 18

const SCALE = 10^18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint8 stor151;
mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor204;
array of struct stor205;
mapping of struct users;
address sub_29fd2007Address;
address farmingPoolAddress;
uint256 sub_74819f4a;
uint256 sub_7b1ba250;
mapping of uint8 stor256;
mapping of uint256 locked;

function totalSupply() payable {
    return totalSupply
}

function sub_29fd2007(?) payable {
    return sub_29fd2007Address
}

function paused() payable {
    return bool(stor151)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_74819f4a(?) payable {
    return sub_74819f4a
}

function sub_7b1ba250(?) payable {
    return sub_7b1ba250
}

function owner() payable {
    return owner
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, users[arg1].field_256, users[arg1].field_512, users[arg1].field_768
}

function locked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return locked[arg1]
}

function farmingPool() payable {
    return farmingPoolAddress
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151:
        revert with 0, 'Pausable: paused'
    stor151 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151:
        revert with 0, 'Pausable: not paused'
    stor151 = 0
    emit Unpaused(msg.sender);
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor256[address(arg1)] = 1
    emit WhiteListAdded(arg1);
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor256[address(arg1)] = 0
    emit WhiteListRemoved(arg1);
}

function sub_78ad54c2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor256[msg.sender]:
        revert with 0, 'Not whitelisted'
    if locked[address(arg1)] > !arg2:
        revert with 0, 17
    locked[address(arg1)] += arg2
    emit 0x93a79578: arg2, msg.sender, address(arg1)
}

function sub_97b85b6a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor256[msg.sender]:
        revert with 0, 'Not whitelisted'
    if locked[address(arg1)] > !arg2:
        revert with 0, 17
    locked[address(arg1)] += arg2
    emit 0xcbc7e17e: arg2, msg.sender, address(arg1)
}

function sub_282a1129(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Generation rate should be greater than 0'
    emit 0xe5f68083: sub_7b1ba250, arg1
    sub_7b1ba250 = arg1
}

function sub_b93dd6ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max cap ratio should be greater than zero'
    emit 0x62dddf41: sub_74819f4a, arg1
    sub_74819f4a = arg1
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

function sub_ae4210b0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor256[msg.sender]:
        revert with 0, 'Not whitelisted'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Burn(arg2, address(arg1));
    require ext_code.size(farmingPoolAddress)
    call farmingPoolAddress.0xd5446518 with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x84c38338: arg2, msg.sender, address(arg1)
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'zero address'
    if block.timestamp < users[address(arg1)].field_256:
        revert with 0, 17
    if block.timestamp - users[address(arg1)].field_256 and sub_7b1ba250 > -1 / block.timestamp - users[address(arg1)].field_256:
        revert with 0, 17
    if users[address(arg1)].field_0 and (block.timestamp * sub_7b1ba250) - (users[address(arg1)].field_256 * sub_7b1ba250) > -1 / users[address(arg1)].field_0:
        revert with 0, 17
    if (block.timestamp * sub_7b1ba250 * users[address(arg1)].field_0) - (users[address(arg1)].field_256 * sub_7b1ba250 * users[address(arg1)].field_0) > -500000000000000001:
        revert with 0, 17
    if users[address(arg1)].field_512 and sub_74819f4a > -1 / users[address(arg1)].field_512:
        revert with 0, 17
    if balanceOf[address(arg1)] < users[address(arg1)].field_512 * sub_74819f4a:
        revert with 0, 17
    if users[address(arg1)].field_0 and sub_74819f4a > -1 / users[address(arg1)].field_0:
        revert with 0, 17
    if balanceOf[address(arg1)] - (users[address(arg1)].field_512 * sub_74819f4a) >= users[address(arg1)].field_0 * sub_74819f4a:
        return 0
    if balanceOf[address(arg1)] - (users[address(arg1)].field_512 * sub_74819f4a) > !((block.timestamp * sub_7b1ba250 * users[address(arg1)].field_0) + (-1 * users[address(arg1)].field_256 * sub_7b1ba250 * users[address(arg1)].field_0) + 5 * 10^17 / 10^18):
        revert with 0, 17
    if balanceOf[address(arg1)] - (users[address(arg1)].field_512 * sub_74819f4a) + ((block.timestamp * sub_7b1ba250 * users[address(arg1)].field_0) + (-1 * users[address(arg1)].field_256 * sub_7b1ba250 * users[address(arg1)].field_0) + 5 * 10^17 / 10^18) <= users[address(arg1)].field_0 * sub_74819f4a:
        return ((block.timestamp * sub_7b1ba250 * users[address(arg1)].field_0) + (-1 * users[address(arg1)].field_256 * sub_7b1ba250 * users[address(arg1)].field_0) + 5 * 10^17 / 10^18)
    if users[address(arg1)].field_0 * sub_74819f4a < balanceOf[address(arg1)] - (users[address(arg1)].field_512 * sub_74819f4a):
        revert with 0, 17
    return ((users[address(arg1)].field_0 * sub_74819f4a) - balanceOf[address(arg1)] + (users[address(arg1)].field_512 * sub_74819f4a))
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'zero address'
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor204.length):
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        bool(stor204.length) = 0
        stor204.length.field_1 = 19
        stor204.length.field_8 = 'Vote Escrowed Degis' / 256
        idx = 0
        while stor204.length.field_1 + 31 / 32 > idx:
            stor204[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        bool(stor204.length) = 0
        stor204.length.field_1 = 19
        stor204.length.field_8 = 'Vote Escrowed Degis' / 256
        idx = 0
        while stor204.length.field_1 + 31 / 32 > idx:
            stor204[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor205.length):
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        bool(stor205.length) = 0
        stor205.length.field_1 = 5
        stor205.length.field_8 = 'veDEG' / 256
        idx = 0
        while stor205.length.field_1 + 31 / 32 > idx:
            stor205[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        bool(stor205.length) = 0
        stor205.length.field_1 = 5
        stor205.length.field_8 = 'veDEG' / 256
        idx = 0
        while stor205.length.field_1 + 31 / 32 > idx:
            stor205[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 1
    stor151 = 0
    sub_7b1ba250 = 10^18
    sub_74819f4a = 100
    sub_29fd2007Address = arg1
    farmingPoolAddress = arg2
}

function withdrawLocked() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'Pausable: paused'
    mem[128] = users[msg.sender].field_256
    mem[160] = users[msg.sender].field_512
    mem[192] = users[msg.sender].field_768
    if not users[msg.sender].field_512:
        revert with 0, 'user has no locked DEG'
    if block.timestamp < users[msg.sender].field_768:
        revert with 0, 'locked time has not passed'
    if users[msg.sender].field_512 and sub_74819f4a > -1 / users[msg.sender].field_512:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < users[msg.sender].field_512 * sub_74819f4a:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] += -1 * users[msg.sender].field_512 * sub_74819f4a
    if totalSupply < users[msg.sender].field_512 * sub_74819f4a:
        revert with 0, 17
    totalSupply += -1 * users[msg.sender].field_512 * sub_74819f4a
    emit Burn((users[msg.sender].field_512 * sub_74819f4a), msg.sender);
    require ext_code.size(farmingPoolAddress)
    call farmingPoolAddress.0xd5446518 with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    users[msg.sender].field_512 = 0
    users[msg.sender].field_768 = 0
    mem[260] = msg.sender
    mem[292] = users[msg.sender].field_512
    mem[224] = 68
    mem[260 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[256 len 4] = unknown_0xa9059cbb(?????)
    mem[324] = 32
    mem[356] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_29fd2007Address):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_512, 0
    mem[456] = 0
    call sub_29fd2007Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_512, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, users[msg.sender].field_512, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if users[msg.sender].field_0:
                revert with memory
                  from 128
                   len users[msg.sender].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if users[msg.sender].field_0:
            require users[msg.sender].field_0 >= 32
            require users[msg.sender].field_256 == bool(users[msg.sender].field_256)
            if not users[msg.sender].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[420] == bool(mem[420])
            if not mem[420]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor101 = 1
}

function name() payable {
    if bool(stor204.length):
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if bool(stor204.length):
            if bool(stor204.length) == stor204.length.field_1 < 32:
                revert with 0, 34
            if stor204.length.field_1:
                if 31 < stor204.length.field_1:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while stor204.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length.field_1), data=mem[128 len ceil32(stor204.length.field_1)])
                mem[128] = 256 * stor204.length.field_8
        else:
            if bool(stor204.length) == stor204.length.field_1 < 32:
                revert with 0, 34
            if stor204.length.field_1:
                if 31 < stor204.length.field_1:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while stor204.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length.field_1), data=mem[128 len ceil32(stor204.length.field_1)])
                mem[128] = 256 * stor204.length.field_8
        mem[ceil32(stor204.length.field_1) + 192 len ceil32(stor204.length.field_1)] = mem[128 len ceil32(stor204.length.field_1)]
        if ceil32(stor204.length.field_1) > stor204.length.field_1:
            mem[stor204.length.field_1 + ceil32(stor204.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor204.length.field_1), data=mem[128 len ceil32(stor204.length.field_1)], mem[(2 * ceil32(stor204.length.field_1)) + 192 len 2 * ceil32(stor204.length.field_1)]), 
    if bool(stor204.length) == stor204.length.field_1 < 32:
        revert with 0, 34
    if bool(stor204.length):
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if stor204.length.field_1:
            if 31 < stor204.length.field_1:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while stor204.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    else:
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if stor204.length.field_1:
            if 31 < stor204.length.field_1:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while stor204.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    mem[ceil32(stor204.length.field_1) + 192 len ceil32(stor204.length.field_1)] = mem[128 len ceil32(stor204.length.field_1)]
    if ceil32(stor204.length.field_1) > stor204.length.field_1:
        mem[stor204.length.field_1 + ceil32(stor204.length.field_1) + 192] = 0
    return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)], mem[(2 * ceil32(stor204.length.field_1)) + 192 len 2 * ceil32(stor204.length.field_1)]), 
}

function symbol() payable {
    if bool(stor205.length):
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if bool(stor205.length):
            if bool(stor205.length) == stor205.length.field_1 < 32:
                revert with 0, 34
            if stor205.length.field_1:
                if 31 < stor205.length.field_1:
                    mem[128] = uint256(stor205.field_0)
                    idx = 128
                    s = 0
                    while stor205.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor205[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor205.length.field_1), data=mem[128 len ceil32(stor205.length.field_1)])
                mem[128] = 256 * stor205.length.field_8
        else:
            if bool(stor205.length) == stor205.length.field_1 < 32:
                revert with 0, 34
            if stor205.length.field_1:
                if 31 < stor205.length.field_1:
                    mem[128] = uint256(stor205.field_0)
                    idx = 128
                    s = 0
                    while stor205.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor205[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor205.length.field_1), data=mem[128 len ceil32(stor205.length.field_1)])
                mem[128] = 256 * stor205.length.field_8
        mem[ceil32(stor205.length.field_1) + 192 len ceil32(stor205.length.field_1)] = mem[128 len ceil32(stor205.length.field_1)]
        if ceil32(stor205.length.field_1) > stor205.length.field_1:
            mem[stor205.length.field_1 + ceil32(stor205.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor205.length.field_1), data=mem[128 len ceil32(stor205.length.field_1)], mem[(2 * ceil32(stor205.length.field_1)) + 192 len 2 * ceil32(stor205.length.field_1)]), 
    if bool(stor205.length) == stor205.length.field_1 < 32:
        revert with 0, 34
    if bool(stor205.length):
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if stor205.length.field_1:
            if 31 < stor205.length.field_1:
                mem[128] = uint256(stor205.field_0)
                idx = 128
                s = 0
                while stor205.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor205[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)])
            mem[128] = 256 * stor205.length.field_8
    else:
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if stor205.length.field_1:
            if 31 < stor205.length.field_1:
                mem[128] = uint256(stor205.field_0)
                idx = 128
                s = 0
                while stor205.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor205[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)])
            mem[128] = 256 * stor205.length.field_8
    mem[ceil32(stor205.length.field_1) + 192 len ceil32(stor205.length.field_1)] = mem[128 len ceil32(stor205.length.field_1)]
    if ceil32(stor205.length.field_1) > stor205.length.field_1:
        mem[stor205.length.field_1 + ceil32(stor205.length.field_1) + 192] = 0
    return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)], mem[(2 * ceil32(stor205.length.field_1)) + 192 len 2 * ceil32(stor205.length.field_1)]), 
}

function claim() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'Pausable: paused'
    if not users[msg.sender].field_0:
        revert with 0, 'user has no stake'
    if not msg.sender:
        revert with 0, 'zero address'
    if block.timestamp < users[address(msg.sender)].field_256:
        revert with 0, 17
    if block.timestamp - users[address(msg.sender)].field_256 and sub_7b1ba250 > -1 / block.timestamp - users[address(msg.sender)].field_256:
        revert with 0, 17
    if users[address(msg.sender)].field_0 and (block.timestamp * sub_7b1ba250) - (users[address(msg.sender)].field_256 * sub_7b1ba250) > -1 / users[address(msg.sender)].field_0:
        revert with 0, 17
    if (block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) > -500000000000000001:
        revert with 0, 17
    if users[address(msg.sender)].field_512 and sub_74819f4a > -1 / users[address(msg.sender)].field_512:
        revert with 0, 17
    if balanceOf[address(msg.sender)] < users[address(msg.sender)].field_512 * sub_74819f4a:
        revert with 0, 17
    if users[address(msg.sender)].field_0 and sub_74819f4a > -1 / users[address(msg.sender)].field_0:
        revert with 0, 17
    if balanceOf[address(msg.sender)] - (users[address(msg.sender)].field_512 * sub_74819f4a) >= users[address(msg.sender)].field_0 * sub_74819f4a:
        users[address(msg.sender)].field_256 = block.timestamp
    else:
        if balanceOf[address(msg.sender)] - (users[address(msg.sender)].field_512 * sub_74819f4a) > !((block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18):
            revert with 0, 17
        if balanceOf[address(msg.sender)] - (users[address(msg.sender)].field_512 * sub_74819f4a) + ((block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18) <= users[address(msg.sender)].field_0 * sub_74819f4a:
            users[address(msg.sender)].field_256 = block.timestamp
            if (block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18:
                emit Claimed(((block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18), msg.sender);
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                totalSupply += (block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18
                if balanceOf[address(msg.sender)] > !((block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                balanceOf[address(msg.sender)] += (block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18
                emit Mint(((block.timestamp * sub_7b1ba250 * users[address(msg.sender)].field_0) + (-1 * users[address(msg.sender)].field_256 * sub_7b1ba250 * users[address(msg.sender)].field_0) + 5 * 10^17 / 10^18), msg.sender);
                require ext_code.size(farmingPoolAddress)
                call farmingPoolAddress.0xd5446518 with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if users[address(msg.sender)].field_0 * sub_74819f4a < balanceOf[address(msg.sender)] - (users[address(msg.sender)].field_512 * sub_74819f4a):
                revert with 0, 17
            users[address(msg.sender)].field_256 = block.timestamp
            if (users[address(msg.sender)].field_0 * sub_74819f4a) - balanceOf[address(msg.sender)] + (users[address(msg.sender)].field_512 * sub_74819f4a):
                emit Claimed(((users[address(msg.sender)].field_0 * sub_74819f4a) - balanceOf[address(msg.sender)] + (users[address(msg.sender)].field_512 * sub_74819f4a)), msg.sender);
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((users[address(msg.sender)].field_0 * sub_74819f4a) - balanceOf[address(msg.sender)] + (users[address(msg.sender)].field_512 * sub_74819f4a)):
                    revert with 0, 17
                totalSupply = totalSupply + (users[address(msg.sender)].field_0 * sub_74819f4a) - balanceOf[address(msg.sender)] + (users[address(msg.sender)].field_512 * sub_74819f4a)
                if balanceOf[address(msg.sender)] > !((users[address(msg.sender)].field_0 * sub_74819f4a) - balanceOf[address(msg.sender)] + (users[address(msg.sender)].field_512 * sub_74819f4a)):
                    revert with 0, 17
                balanceOf[address(msg.sender)] = (users[address(msg.sender)].field_0 * sub_74819f4a) + (users[address(msg.sender)].field_512 * sub_74819f4a)
                emit Mint(((users[address(msg.sender)].field_0 * sub_74819f4a) - balanceOf[address(msg.sender)] + (users[address(msg.sender)].field_512 * sub_74819f4a)), msg.sender);
                require ext_code.size(farmingPoolAddress)
                call farmingPoolAddress.0xd5446518 with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}



}
