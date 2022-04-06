contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint8 stor1;
address stor1; offset 8
address stor2;
address stor3;
mapping of uint256 stor4;
mapping of address stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of struct stor10;
address stor11;
array of struct stor12;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
uint256 stor13; offset 16
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor16;
address stor18;
uint8 stor19; offset 160
uint8 stor19; offset 168
uint8 stor19; offset 176
uint8 stor19; offset 184
uint128 stor19; offset 184
uint128 stor19; offset 176
uint128 stor19; offset 168
uint128 stor19; offset 160
address stor19;

function didClaim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function didVote(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function didCancel(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function _fallback() payable {
    revert
}

function resumeBet() {
    if stor11 != msg.sender:
        revert with 0, 'Not an admin'
    if uint8(stor13.field_0) != 7:
        revert with 0, 'Not allowed in current bet state'
    uint8(stor13.field_0) = uint8(stor13.field_16)
}

function dispute() {
    if stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] != msg.sender:
        if stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] != msg.sender:
            revert with 0, 'Not a bettor'
    if bool(uint8(stor19.field_184)) != 1:
        revert with 0, 'Not allowed to use dispute again'
    if uint8(stor13.field_0) == 6:
        revert with 0, 'Bet is over'
    Mask(72, 0, stor19.field_184) = 0
    Mask(240, 0, stor13.field_16) = uint8(stor13.field_0)
    uint8(stor13.field_0) = 7
}

function claimReward() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor13.field_0) != 5:
        revert with 0, 'Not allowed in current bet state'
    if stor10[address(msg.sender)].field_0 <= 0:
        revert with 0, 'Account doesn't have any shares'
    if block.timestamp < stor14:
        revert with 'NH{q', 17
    if block.timestamp - stor14 <= 24 * 3600:
        revert with 0, 'Wait 24h before claiming'
    call msg.sender with:
       value stor10[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10[address(msg.sender)].field_0 = 0
    stor8[address(msg.sender)] = 1
    if not eth.balance(this.address):
        if uint8(stor13.field_0) == 255:
            revert with 'NH{q', 17
        uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
    stor0 = 1
}

function mintToken(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor13.field_0) != 5:
        if uint8(stor13.field_0) != 6:
            revert with 0, 'Winner isn't determined'
    if stor18 != msg.sender:
        revert with 0, 'Not a winner'
    if uint8(stor19.field_160):
        revert with 0, 'Token has already been minted'
    Mask(96, 0, stor19.field_160) = 1
    require ext_code.size(stor3)
    call stor3 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    stor0 = 1
}

function addBettor() payable {
    if uint256(stor16) != msg.value:
        revert with 0, 'Sent value and stake mismatch'
    if msg.sender == stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]:
        revert with 0, 'Already a bettor'
    if msg.sender == stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]:
        revert with 0, 'Already a bettor'
    if uint8(stor13.field_0) != 1:
        revert with 0, 'Not allowed in current bet state'
    if uint8(stor13.field_0) != 1:
        if stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b
        stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b] = msg.sender
    else:
        if stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a
        stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] = msg.sender
    require ext_code.size(address(stor1.field_8))
    call address(stor1.field_8).register(address rg1, uint8 rg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]:
        if stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]:
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
}

function addCounterBettor() payable {
    if uint256(stor16) != msg.value:
        revert with 0, 'Sent value and stake mismatch'
    if msg.sender == stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]:
        revert with 0, 'Already a bettor'
    if msg.sender == stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]:
        revert with 0, 'Already a bettor'
    if uint8(stor13.field_0) != 1:
        revert with 0, 'Not allowed in current bet state'
    if uint8(stor13.field_0) != 1:
        if stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9
        stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9] = msg.sender
    else:
        if stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d
        stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] = msg.sender
    require ext_code.size(address(stor1.field_8))
    call address(stor1.field_8).register(address rg1, uint8 rg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]:
        if stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]:
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
}

function init(address arg1, uint256 arg2, string arg3, uint256 arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 128 > test266151307() or ceil32(arg3.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor13.field_0):
        revert with 0, 'Not allowed in current bet state'
    if uint8(stor1.field_0):
        revert with 0, 'Mastercopy forbidden modification'
    stor11 = arg1
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor12[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            stor12[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    uint256(stor16) = arg2
    stor15 = arg4
    uint8(stor13.field_0) = 0
    Mask(96, 0, stor19.field_160) = 0
    Mask(88, 0, stor19.field_168) = 0
    Mask(72, 0, stor19.field_184) = 1
    address(stor1.field_8) = arg5
    stor2 = arg6
    stor3 = arg7
    if uint8(stor13.field_0) == 255:
        revert with 'NH{q', 17
    uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
    stor0 = 1
}

function addBettorJudge(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] == msg.sender:
        revert with 0, 'Not allowed to be a judge'
    if stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] == msg.sender:
        revert with 0, 'Not allowed to be a judge'
    if msg.sender == stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]:
        revert with 0, 'Already a judge'
    if msg.sender == stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]:
        revert with 0, 'Already a judge'
    if uint8(stor13.field_0) != 2:
        revert with 0, 'Not allowed in current bet state'
    if uint8(stor13.field_0) != 1:
        if stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b
        stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b] = msg.sender
    else:
        if stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a
        stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] = msg.sender
    require ext_code.size(address(stor1.field_8))
    call address(stor1.field_8).register(address rg1, uint8 rg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]:
        if stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]:
            if stor2:
                require ext_code.size(stor2)
                call stor2.0xf3acfb9c with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                Mask(80, 0, stor19.field_176) = 1
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
}

function addCounterBettorJudge(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] == msg.sender:
        revert with 0, 'Not allowed to be a judge'
    if stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] == msg.sender:
        revert with 0, 'Not allowed to be a judge'
    if msg.sender == stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]:
        revert with 0, 'Already a judge'
    if msg.sender == stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]:
        revert with 0, 'Already a judge'
    if uint8(stor13.field_0) != 2:
        revert with 0, 'Not allowed in current bet state'
    if uint8(stor13.field_0) != 1:
        if stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9
        stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9] = msg.sender
    else:
        if stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]:
            revert with 0, 'Role taken'
        stor4[address(msg.sender)] = 0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d
        stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] = msg.sender
    require ext_code.size(address(stor1.field_8))
    call address(stor1.field_8).register(address rg1, uint8 rg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]:
        if stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]:
            if stor2:
                require ext_code.size(stor2)
                call stor2.0xf3acfb9c with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                Mask(80, 0, stor19.field_176) = 1
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
}

function getBet() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 >= stor12.length.field_1:
                    mem[128] = 256 * stor12.length.field_8
                else:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 >= stor12.length.field_1:
                    mem[128] = 256 * stor12.length.field_8
                else:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(this.address), 
               Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)]),
               uint8(stor13.field_0),
               stor15,
               uint256(stor16),
               stor18,
               address(stor19.field_0),
               bool(uint8(stor19.field_160)),
               bool(uint8(stor19.field_168))
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 >= stor12.length.field_1:
                mem[128] = 256 * stor12.length.field_8
            else:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 >= stor12.length.field_1:
                mem[128] = 256 * stor12.length.field_8
            else:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(this.address), 
           Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)]),
           uint8(stor13.field_0),
           stor15,
           uint256(stor16),
           stor18,
           address(stor19.field_0),
           bool(uint8(stor19.field_160)),
           bool(uint8(stor19.field_168))
}

function voteForBettor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor13.field_0) == 3:
        if block.timestamp >= stor15:
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
    if stor4[address(msg.sender)] != 0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b:
        if stor4[address(msg.sender)] != 0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9:
            if stor11 != msg.sender:
                revert with 0, 'Not a judge'
    if bool(stor7[address(msg.sender)]) == 1:
        revert with 0, 'Already voted'
    if uint8(stor13.field_0) != 4:
        revert with 0, 'Not allowed in current bet state'
    stor7[address(msg.sender)] = 1
    if stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] == 255:
        revert with 'NH{q', 17
    stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] = uint8(stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] + 1)
    if stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] > 1:
        stor14 = block.timestamp
        if stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] > stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]]:
            stor18 = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
            address(stor19.field_0) = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
        else:
            stor18 = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
            address(stor19.field_0) = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
        if stor2:
            require ext_code.size(stor2)
            staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
            call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor2)
            call stor2.0xb1483be8 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * uint256(stor16) >= eth.balance(this.address):
            if eth.balance(this.address) < 0:
                revert with 'NH{q', 17
            stor10[stor18].field_0 = eth.balance(this.address)
            if stor10[stor18].field_0 > -1:
                revert with 'NH{q', 17
            if eth.balance(this.address) < stor10[stor18].field_0:
                revert with 'NH{q', 17
            call stor11 with:
               value eth.balance(this.address) - stor10[stor18].field_0 wei
                 gas 2300 * is_zero(value) wei
        else:
            if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if eth.balance(this.address) < 2 * uint256(stor16):
                revert with 'NH{q', 17
            if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                    revert with 'NH{q', 17
                stor10[stor18].field_0 = 0
                stor10[stor18].field_1 = uint255(stor16)
                if stor10[stor18].field_0 > -1:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < stor10[stor18].field_0:
                    revert with 'NH{q', 17
                call stor11 with:
                   value eth.balance(this.address) - stor10[stor18].field_0 wei
                     gas 2300 * is_zero(value) wei
            else:
                Mask(88, 0, stor19.field_168) = 1
                if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                    revert with 'NH{q', 17
                stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                    revert with 'NH{q', 17
                stor10[stor18].field_0 = 0
                stor10[stor18].field_1 = uint255(stor16)
                if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                    revert with 'NH{q', 17
                call stor11 with:
                   value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(stor13.field_0) == 255:
            revert with 'NH{q', 17
        uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
    else:
        if stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]] > 1:
            stor14 = block.timestamp
            if stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] > stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]]:
                stor18 = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
                address(stor19.field_0) = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
            else:
                stor18 = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
                address(stor19.field_0) = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
            if stor2:
                require ext_code.size(stor2)
                staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
                call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor2)
                call stor2.0xb1483be8 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * uint256(stor16) >= eth.balance(this.address):
                if eth.balance(this.address) < 0:
                    revert with 'NH{q', 17
                stor10[stor18].field_0 = eth.balance(this.address)
                if stor10[stor18].field_0 > -1:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < stor10[stor18].field_0:
                    revert with 'NH{q', 17
                call stor11 with:
                   value eth.balance(this.address) - stor10[stor18].field_0 wei
                     gas 2300 * is_zero(value) wei
            else:
                if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < 2 * uint256(stor16):
                    revert with 'NH{q', 17
                if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                    if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                        revert with 'NH{q', 17
                    stor10[stor18].field_0 = 0
                    stor10[stor18].field_1 = uint255(stor16)
                    if stor10[stor18].field_0 > -1:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < stor10[stor18].field_0:
                        revert with 'NH{q', 17
                    call stor11 with:
                       value eth.balance(this.address) - stor10[stor18].field_0 wei
                         gas 2300 * is_zero(value) wei
                else:
                    Mask(88, 0, stor19.field_168) = 1
                    if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                        revert with 'NH{q', 17
                    stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                    stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                    if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                        revert with 'NH{q', 17
                    stor10[stor18].field_0 = 0
                    stor10[stor18].field_1 = uint255(stor16)
                    if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                        revert with 'NH{q', 17
                    call stor11 with:
                       value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                         gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
}

function voteForCounterBettor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor13.field_0) == 3:
        if block.timestamp >= stor15:
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
    if stor4[address(msg.sender)] != 0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b:
        if stor4[address(msg.sender)] != 0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9:
            if stor11 != msg.sender:
                revert with 0, 'Not a judge'
    if bool(stor7[address(msg.sender)]) == 1:
        revert with 0, 'Already voted'
    if uint8(stor13.field_0) != 4:
        revert with 0, 'Not allowed in current bet state'
    stor7[address(msg.sender)] = 1
    if stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]] == 255:
        revert with 'NH{q', 17
    stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]] = uint8(stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]] + 1)
    if stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] > 1:
        stor14 = block.timestamp
        if stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] > stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]]:
            stor18 = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
            address(stor19.field_0) = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
        else:
            stor18 = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
            address(stor19.field_0) = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
        if stor2:
            require ext_code.size(stor2)
            staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
            call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor2)
            call stor2.0xb1483be8 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * uint256(stor16) >= eth.balance(this.address):
            if eth.balance(this.address) < 0:
                revert with 'NH{q', 17
            stor10[stor18].field_0 = eth.balance(this.address)
            if stor10[stor18].field_0 > -1:
                revert with 'NH{q', 17
            if eth.balance(this.address) < stor10[stor18].field_0:
                revert with 'NH{q', 17
            call stor11 with:
               value eth.balance(this.address) - stor10[stor18].field_0 wei
                 gas 2300 * is_zero(value) wei
        else:
            if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if eth.balance(this.address) < 2 * uint256(stor16):
                revert with 'NH{q', 17
            if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                    revert with 'NH{q', 17
                stor10[stor18].field_0 = 0
                stor10[stor18].field_1 = uint255(stor16)
                if stor10[stor18].field_0 > -1:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < stor10[stor18].field_0:
                    revert with 'NH{q', 17
                call stor11 with:
                   value eth.balance(this.address) - stor10[stor18].field_0 wei
                     gas 2300 * is_zero(value) wei
            else:
                Mask(88, 0, stor19.field_168) = 1
                if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                    revert with 'NH{q', 17
                stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                    revert with 'NH{q', 17
                stor10[stor18].field_0 = 0
                stor10[stor18].field_1 = uint255(stor16)
                if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                    revert with 'NH{q', 17
                call stor11 with:
                   value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(stor13.field_0) == 255:
            revert with 'NH{q', 17
        uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
    else:
        if stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]] > 1:
            stor14 = block.timestamp
            if stor6[stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]] > stor6[stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]]:
                stor18 = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
                address(stor19.field_0) = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
            else:
                stor18 = stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d]
                address(stor19.field_0) = stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a]
            if stor2:
                require ext_code.size(stor2)
                staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
                call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor2)
                call stor2.0xb1483be8 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * uint256(stor16) >= eth.balance(this.address):
                if eth.balance(this.address) < 0:
                    revert with 'NH{q', 17
                stor10[stor18].field_0 = eth.balance(this.address)
                if stor10[stor18].field_0 > -1:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < stor10[stor18].field_0:
                    revert with 'NH{q', 17
                call stor11 with:
                   value eth.balance(this.address) - stor10[stor18].field_0 wei
                     gas 2300 * is_zero(value) wei
            else:
                if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if eth.balance(this.address) < 2 * uint256(stor16):
                    revert with 'NH{q', 17
                if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                    if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                        revert with 'NH{q', 17
                    stor10[stor18].field_0 = 0
                    stor10[stor18].field_1 = uint255(stor16)
                    if stor10[stor18].field_0 > -1:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < stor10[stor18].field_0:
                        revert with 'NH{q', 17
                    call stor11 with:
                       value eth.balance(this.address) - stor10[stor18].field_0 wei
                         gas 2300 * is_zero(value) wei
                else:
                    Mask(88, 0, stor19.field_168) = 1
                    if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                        revert with 'NH{q', 17
                    stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                    stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                    if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                        revert with 'NH{q', 17
                    stor10[stor18].field_0 = 0
                    stor10[stor18].field_1 = uint255(stor16)
                    if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                        revert with 'NH{q', 17
                    call stor11 with:
                       value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                         gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(stor13.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor13.field_0) = uint8(uint8(stor13.field_0) + 1)
}

function cancelBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(msg.sender)] != 0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a:
        if stor4[address(msg.sender)] != 0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d:
            if stor11 != msg.sender:
                revert with 0, 'Not a bettor'
    if stor9[address(msg.sender)]:
        revert with 0, 'Already cancelled'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor13.field_0) == 5:
        revert with 0, 'Bet is over'
    if uint8(stor13.field_0) == 6:
        revert with 0, 'Bet is over'
    stor9[address(msg.sender)] = 1
    if uint8(stor13.field_8) == 255:
        revert with 'NH{q', 17
    uint8(stor13.field_8) = uint8(uint8(stor13.field_8) + 1)
    if uint8(stor13.field_0) == 1:
        if 1 == uint8(stor13.field_8):
            if not uint8(stor19.field_176):
                call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                   value uint256(stor16) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(stor2)
                staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
                call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor2)
                call stor2.0xb1483be8 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * uint256(stor16) >= eth.balance(this.address):
                    if eth.balance(this.address) < 0:
                        revert with 'NH{q', 17
                    stor10[stor18].field_0 = eth.balance(this.address)
                    if stor10[stor18].field_0 > -1:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < stor10[stor18].field_0:
                        revert with 'NH{q', 17
                    call stor11 with:
                       value eth.balance(this.address) - stor10[stor18].field_0 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < 2 * uint256(stor16):
                        revert with 'NH{q', 17
                    if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                        if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                            revert with 'NH{q', 17
                        stor10[stor18].field_0 = 0
                        stor10[stor18].field_1 = uint255(stor16)
                        if stor10[stor18].field_0 > -1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < stor10[stor18].field_0:
                            revert with 'NH{q', 17
                        call stor11 with:
                           value eth.balance(this.address) - stor10[stor18].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        Mask(88, 0, stor19.field_168) = 1
                        if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                            revert with 'NH{q', 17
                        stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                        stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                        if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                            revert with 'NH{q', 17
                        stor10[stor18].field_0 = 0
                        stor10[stor18].field_1 = uint255(stor16)
                        if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                            revert with 'NH{q', 17
                        call stor11 with:
                           value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                   value uint256(stor16) wei
                     gas 2300 * is_zero(value) wei
            if uint8(stor13.field_0) > 1:
                if eth.balance(this.address) <= uint256(stor16):
                    call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                       value uint256(stor16) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor11 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            uint8(stor13.field_0) = 6
        else:
            if msg.sender == stor11:
                if not uint8(stor19.field_176):
                    call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                       value uint256(stor16) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
                    call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    call stor2.0xb1483be8 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 2 * uint256(stor16) >= eth.balance(this.address):
                        if eth.balance(this.address) < 0:
                            revert with 'NH{q', 17
                        stor10[stor18].field_0 = eth.balance(this.address)
                        if stor10[stor18].field_0 > -1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < stor10[stor18].field_0:
                            revert with 'NH{q', 17
                        call stor11 with:
                           value eth.balance(this.address) - stor10[stor18].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < 2 * uint256(stor16):
                            revert with 'NH{q', 17
                        if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                            if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                                revert with 'NH{q', 17
                            stor10[stor18].field_0 = 0
                            stor10[stor18].field_1 = uint255(stor16)
                            if stor10[stor18].field_0 > -1:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) < stor10[stor18].field_0:
                                revert with 'NH{q', 17
                            call stor11 with:
                               value eth.balance(this.address) - stor10[stor18].field_0 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            Mask(88, 0, stor19.field_168) = 1
                            if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                                revert with 'NH{q', 17
                            stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                            stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                            if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                                revert with 'NH{q', 17
                            stor10[stor18].field_0 = 0
                            stor10[stor18].field_1 = uint255(stor16)
                            if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                                revert with 'NH{q', 17
                            call stor11 with:
                               value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                       value uint256(stor16) wei
                         gas 2300 * is_zero(value) wei
                if uint8(stor13.field_0) > 1:
                    if eth.balance(this.address) <= uint256(stor16):
                        call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                           value uint256(stor16) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor11 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                uint8(stor13.field_0) = 6
    else:
        if 2 == uint8(stor13.field_8):
            if not uint8(stor19.field_176):
                call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                   value uint256(stor16) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(stor2)
                staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
                call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor2)
                call stor2.0xb1483be8 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * uint256(stor16) >= eth.balance(this.address):
                    if eth.balance(this.address) < 0:
                        revert with 'NH{q', 17
                    stor10[stor18].field_0 = eth.balance(this.address)
                    if stor10[stor18].field_0 > -1:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < stor10[stor18].field_0:
                        revert with 'NH{q', 17
                    call stor11 with:
                       value eth.balance(this.address) - stor10[stor18].field_0 wei
                         gas 2300 * is_zero(value) wei
                else:
                    if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) < 2 * uint256(stor16):
                        revert with 'NH{q', 17
                    if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                        if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                            revert with 'NH{q', 17
                        stor10[stor18].field_0 = 0
                        stor10[stor18].field_1 = uint255(stor16)
                        if stor10[stor18].field_0 > -1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < stor10[stor18].field_0:
                            revert with 'NH{q', 17
                        call stor11 with:
                           value eth.balance(this.address) - stor10[stor18].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        Mask(88, 0, stor19.field_168) = 1
                        if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                            revert with 'NH{q', 17
                        stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                        stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                        if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                            revert with 'NH{q', 17
                        stor10[stor18].field_0 = 0
                        stor10[stor18].field_1 = uint255(stor16)
                        if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                            revert with 'NH{q', 17
                        call stor11 with:
                           value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                   value uint256(stor16) wei
                     gas 2300 * is_zero(value) wei
            if uint8(stor13.field_0) > 1:
                if eth.balance(this.address) <= uint256(stor16):
                    call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                       value uint256(stor16) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor11 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            uint8(stor13.field_0) = 6
        else:
            if msg.sender == stor11:
                if not uint8(stor19.field_176):
                    call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                       value uint256(stor16) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.getTokenBalance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0x9719d867a500ef117cc201206b8ab51e794d3f82
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x9719d867a500ef117cc201206b8ab51e794d3f82)
                    call 0x9719d867a500ef117cc201206b8ab51e794d3f82.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    call stor2.0xb1483be8 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 2 * uint256(stor16) >= eth.balance(this.address):
                        if eth.balance(this.address) < 0:
                            revert with 'NH{q', 17
                        stor10[stor18].field_0 = eth.balance(this.address)
                        if stor10[stor18].field_0 > -1:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < stor10[stor18].field_0:
                            revert with 'NH{q', 17
                        call stor11 with:
                           value eth.balance(this.address) - stor10[stor18].field_0 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if uint256(stor16) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) < 2 * uint256(stor16):
                            revert with 'NH{q', 17
                        if eth.balance(this.address) - (2 * uint256(stor16)) <= 0:
                            if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                                revert with 'NH{q', 17
                            stor10[stor18].field_0 = 0
                            stor10[stor18].field_1 = uint255(stor16)
                            if stor10[stor18].field_0 > -1:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) < stor10[stor18].field_0:
                                revert with 'NH{q', 17
                            call stor11 with:
                               value eth.balance(this.address) - stor10[stor18].field_0 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            Mask(88, 0, stor19.field_168) = 1
                            if eth.balance(this.address) - (2 * uint256(stor16)) > 0x7c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1f07c1:
                                revert with 'NH{q', 17
                            stor10[stor5[0x32f362939feeddf98eccc44e698411fe6ec6a883b233638978ad33951461fc5b]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                            stor10[stor5[0x4f1edc0ca9283811223635e0c6047a826fb8cfbfe336a7cf471f73498956f6e9]].field_0 = (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100
                            if eth.balance(this.address) < eth.balance(this.address) - (2 * uint256(stor16)):
                                revert with 'NH{q', 17
                            stor10[stor18].field_0 = 0
                            stor10[stor18].field_1 = uint255(stor16)
                            if (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if stor10[stor18].field_0 > -(2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) - 1:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) < stor10[stor18].field_0 + (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100):
                                revert with 'NH{q', 17
                            call stor11 with:
                               value eth.balance(this.address) - stor10[stor18].field_0 - (2 * (33 * eth.balance(this.address)) - (33 * 2 * uint256(stor16)) / 100) wei
                                 gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor5[0x685cbe58d4098fac8330e909dac36f447a9209d2b24413a861fd9643c6c2999a] with:
                       value uint256(stor16) wei
                         gas 2300 * is_zero(value) wei
                if uint8(stor13.field_0) > 1:
                    if eth.balance(this.address) <= uint256(stor16):
                        call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call stor5[0x2cd00aae05936216d949074140c6df80df0c371c39612aecda646a5eb38ea26d] with:
                           value uint256(stor16) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor11 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                uint8(stor13.field_0) = 6
    stor0 = 1
}



}
